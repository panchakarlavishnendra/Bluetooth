import 'dart:async';
import 'dart:typed_data';
import 'package:flutter_bluetooth/screens/success_screen.dart';
import 'package:flutter_bluetooth/screens/truck_weightment_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/screens/chat_page.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import 'bluetooth_entity_list_screen.dart';

class SelectBondedDevicePage extends StatefulWidget {
  /// If true, on page start there is performed discovery upon the bonded devices.
  /// Then, if they are not avaliable, they would be disabled from the selection.
  final bool checkAvailability;

  final Function func;

  const SelectBondedDevicePage({this.checkAvailability = true, this.func});

  @override
  _SelectBondedDevicePage createState() => new _SelectBondedDevicePage();
}

enum _DeviceAvailability {
  no,
  maybe,
  yes,
}

class _Message {
  int whom;
  String text;

  _Message(this.whom, this.text);
}

class _DeviceWithAvailability extends BluetoothDevice {
  BluetoothDevice device;
  _DeviceAvailability availability;
  int rssi;

  _DeviceWithAvailability(this.device, this.availability, [this.rssi]);
}

class _SelectBondedDevicePage extends State<SelectBondedDevicePage> {
  static final clientID = 0;
  BluetoothConnection connection;

  List list = [];
  List<_Message> messages = List<_Message>();

  List arr = [];
  String _messageBuffer = '';
  String stringVal;
  String moistureValue;
  final TextEditingController textEditingController =
  new TextEditingController();
  final ScrollController listScrollController = new ScrollController();

  bool isConnecting = true;

  bool get isConnected => connection != null && connection.isConnected;

  bool isDisconnecting = false;

//  BluetoothDevice device;
  BluetoothDevice serverDevice;

  List<_DeviceWithAvailability> devices = List<_DeviceWithAvailability>();

  // Availability
  StreamSubscription<BluetoothDiscoveryResult> _discoveryStreamSubscription;
  Uint8List data;

  bool _isDiscovering;

  _SelectBondedDevicePage();

  @override
  void initState() {
    super.initState();

    _isDiscovering = widget.checkAvailability;

    if (_isDiscovering) {
      _startDiscovery();
    }

    // Setup a list of the bonded devices
    FlutterBluetoothSerial.instance
        .getBondedDevices()
        .then((List<BluetoothDevice> bondedDevices) {
      setState(() {
        devices = bondedDevices
            .map(
              (device) => _DeviceWithAvailability(
            device,
            widget.checkAvailability
                ? _DeviceAvailability.maybe
                : _DeviceAvailability.yes,
          ),
        )
            .toList();
      });
    });

  }

  void _restartDiscovery() {
    setState(() {
      _isDiscovering = true;
    });

    _startDiscovery();
  }

  void _startDiscovery() {
    _discoveryStreamSubscription =
        FlutterBluetoothSerial.instance.startDiscovery().listen((r) {
          setState(() {
            Iterator i = devices.iterator;
            while (i.moveNext()) {
              var _device = i.current;
              if (_device.device == r.device) {
                _device.availability = _DeviceAvailability.yes;
                _device.rssi = r.rssi;
              }
            }
          });
        });

    _discoveryStreamSubscription.onDone(() {
      setState(() {
        _isDiscovering = false;
      });
    });
  }

  void onDataReceived(Uint8List data) {
    // Allocate buffer for parsed data
    int backspacesCounter = 0;
    data.forEach((byte) {
      if (byte == 8 || byte == 127) {
        backspacesCounter++;
      }
    });
    Uint8List buffer = Uint8List(data.length - backspacesCounter);
    int bufferIndex = buffer.length;

    // Apply backspace control character
    backspacesCounter = 0;
    for (int i = data.length - 1; i >= 0; i--) {
      if (data[i] == 8 || data[i] == 127) {
        backspacesCounter++;
      } else {
        if (backspacesCounter > 0) {
          backspacesCounter--;
        } else {
          buffer[--bufferIndex] = data[i];
        }
      }
    }

    // Create message if there is new line character
    String dataString = String.fromCharCodes(buffer);
    setState(() {
      stringVal = dataString;
    });

    int index = buffer.indexOf(13);
    if (~index != 0) {
      setState(() {
        messages.add(
          _Message(
            1,
            backspacesCounter > 0
                ? _messageBuffer.substring(
                0, _messageBuffer.length - backspacesCounter)
                : _messageBuffer + dataString.substring(0, index),
          ),
        );

        _messageBuffer = dataString.substring(index);
      });
    } else {
      _messageBuffer = (backspacesCounter > 0
          ? _messageBuffer.substring(
          0, _messageBuffer.length - backspacesCounter)
          : _messageBuffer + dataString);
    }

    moistureValue = messages
        .map((_message) => (text) {
      return text == '/shrug' ? '¯\\_(ツ)_/¯' : text;
    }(_message.text.replaceAll(new RegExp(r"\s+"), "")))
        .toString();
    if (moistureValue != null) {
      String str = moistureValue;
//      String start = 'MOISTURE=';
      String end = 'SIGNATURE';
      int startIndex = str.indexOf('MOISTURE=');
//      int endIndex = str.indexOf(end,startIndex+start.length);
      int endIndex = str.indexOf('SIGNATURE');
      String moistureData = str.substring(startIndex, endIndex);
      String strNum = moistureData;
      final iReg = RegExp(r'(\d+)');
      moistureData = iReg.allMatches(strNum).map((m) => m.group(0)).join('.');
      print(moistureData);
      widget.func(moistureData);
    }


  }

  @override
   void dispose() {
     // Avoid memory leak (setState after dispose) and disconnect
     if (isConnected) {
       isDisconnecting = true;
       connection.dispose();
       connection = null;
     }
     _discoveryStreamSubscription?.cancel();
     super.dispose();
   }

  @override
  Widget build(BuildContext context) {
    List<BluetoothDeviceListEntry> list = devices
        .map((_device) => BluetoothDeviceListEntry(
      device: _device.device,
      rssi: _device.rssi,
      enabled: _device.availability == _DeviceAvailability.yes,
      onTap: () {
//                Navigator.of(context).pop(_device.device);
        serverDevice = _device.device;
//              onDataReceived(data);
        BluetoothConnection.toAddress(serverDevice.address)
            .then((_connection) {
          print('Connected to the device');
          connection = _connection;
          setState(() {
            isConnecting = false;
            isDisconnecting = false;
          });

          connection.input.listen(onDataReceived).onDone(() {
            // Example: Detect which side closed the connection
            // There should be `isDisconnecting` flag to show are we are (locally)
            // in middle of disconnecting process, should be set before calling
            // `dispose`, `finish` or `close`, which all causes to disconnect.
            // If we except the disconnection, `onDone` should be fired as result.
            // If we didn't except this (no flag set), it means closing by remote.
            if (isDisconnecting) {
              print('Disconnecting locally!');
            } else {
              print('Disconnected remotely!');
            }
            if (this.mounted) {
              setState(() {});
            }
          });
        }).catchError((error) {
          print('Cannot connect, exception occured');
          print(error);
        });
//                Navigator.of(context).pop();
      },
    ))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Select device'),
        actions: <Widget>[
          _isDiscovering
              ? FittedBox(
            child: Container(
              margin: new EdgeInsets.all(16.0),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.white,
                ),
              ),
            ),
          )
              : IconButton(
            icon: Icon(Icons.replay),
            onPressed: _restartDiscovery,
          )
        ],
      ),
      body: ListView(children: list),
    );
  }
}
