import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/models/place_location.dart';
import 'package:flutter_bluetooth/screens/chat_page.dart';
import 'package:flutter_bluetooth/screens/connected_devices_screen.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoder/model.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

class MainPage extends StatefulWidget {
  static const routeName = '/MainPage';
  @override
  _MainPage createState() => new _MainPage();
  static _MainPage of(BuildContext context) =>
      context.findAncestorStateOfType<_MainPage>();

}

class _MainPage extends State<MainPage> {
  BluetoothState _bluetoothState = BluetoothState.UNKNOWN;

  String _address;
  String _name = "...";
  String _text = '';
  List str = ['a','b','c'];
  Timer _discoverableTimeoutTimer;
  int _discoverableTimeoutSecondsLeft = 0;
  BluetoothDevice server;
  bool _autoAcceptPairingRequests = false;


  // function(value) => setState(() => _text = value);


  @override
  void initState() {
    super.initState();

    setCurrentLocation();
    // Get current state
    FlutterBluetoothSerial.instance.state.then((state) {
      setState(() {
        _bluetoothState = state;
      });
    });
  }

  final _locationController = TextEditingController();
  PlaceLocation _pickedLocation;

  void setCurrentLocation() async {
    //Initializing with User current location
    final locData = await Location().getLocation();
    final coordinates = new Coordinates(locData.latitude, locData.longitude);
    final userAddress =
    await Geocoder.local.findAddressesFromCoordinates(coordinates);
    _locationController.text = userAddress.first.addressLine;

    _pickedLocation = new PlaceLocation(address: userAddress.first.addressLine);
    _address = _pickedLocation.address.toString();
    // _incident.location = _pickedLocation;
  }
  var data;



  @override
  void dispose() {
    FlutterBluetoothSerial.instance.setPairingRequestHandler(null);
    // _collectingTask?.dispose();
    _discoverableTimeoutTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quality Check'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(),
                    child: Icon(Icons.home),
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(),
                    child: _address != null
                        ? Text(_address.toString())
                        : Text("Unable To Fetch The Location"),
                  ),
                ]),
          ),
          Divider(),
          ListTile(
            title: RaisedButton(
              child: const Text('Paired devices'),
              onPressed: () async {
                final BluetoothDevice selectedDevice =
                await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SelectBondedDevicePage(
                          checkAvailability: false,
                          // server: server,
                          func:(val) => setState(() => _text = val,
                              )
                      );
                    },
                  ),
                );

                if (selectedDevice != null) {
                  print('Connect -> selected ' + selectedDevice.address);
                  // _startChat(context, selectedDevice);
                } else {
                  print('Connect -> no device selected');
                  String address = selectedDevice.name;
                }
              },
            ),
          ),

          ListTile(
            title: Text(_text),
          )
        ],
      ),
    );
  }

//   void _startChat(BuildContext context, BluetoothDevice server) {
//     // ChatPage msgdata = new ChatPage();
//     // msgdata.onDataReceived();
//     // print(msgdata);
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) {
//           return ChatPage(server: server,func:(val) => setState(() => _text = val));
//         },
//       ),
//     );
//   }
}