import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/models/place_location.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_bluetooth/screens/connected_devices.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoder/model.dart';
import 'package:location/location.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => new _MainPage();
}

class _MainPage extends State<MainPage> {
  BluetoothState _bluetoothState = BluetoothState.UNKNOWN;

  String _address;
  String _name = "...";

  Timer _discoverableTimeoutTimer;
  int _discoverableTimeoutSecondsLeft = 0;


  bool _autoAcceptPairingRequests = false;

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

    _pickedLocation = PlaceLocation(
        address: userAddress.first.addressLine);
    _address = _pickedLocation.address.toString();
    // _incident.location = _pickedLocation;

  }
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
        body:
        ListView(
          children: <Widget>[
            Container(
              height: 100,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget>[
                    Container(

                      decoration:BoxDecoration(

                      ),
                      child: Icon(Icons.home),
                    ),
                    Container(
                        width: 200,
                      decoration:BoxDecoration(

                      ),
                      child: Text(_address.toString()),
                    ),
                  ]
              ),
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
                            checkAvailability: false);
                      },
                    ),
                  );
                },
              ),
            ),


          ],
        ),
      );
    }
}