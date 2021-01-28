import 'package:flutter/material.dart';

import 'package:flutter_bluetooth/screens/connected_devices_screen.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

const List<String> assetNames = <String>['assets/bluetooth.svg'];

class QualityCheck extends StatefulWidget {
  @override
  _QualityCheckState createState() => _QualityCheckState();
}

class _QualityCheckState extends State<QualityCheck> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _text = "";
  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  final _moistureController = TextEditingController();

  final _damageController = TextEditingController();

  // void dispose() {
  //   _moistureController.dispose();
  //   _damageController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    var style = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
    _moistureController.text = '15';
    return Scaffold(
      appBar: AppBar(
        title: Text('Quality Check'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      child: GestureDetector(
                        child: SvgPicture.asset(
                          "assets/icons/storage.svg",
                          height: 45,
                          width: 35,
                        ),
                        onTap: () {},
                      ),
                    ),
                    Text(
                      'Address',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                SizedBox(),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Text('Assayer')
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,bottom: 7,top:8),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Loremepsum',
                        textAlign: TextAlign.start,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Divider(
                    height: 20,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 18),
                      child: Text('QC Parameter', style: style),
                    ),
                    Text(
                      'Value',
                      style: style,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Moisture',
                        style: TextStyle(fontSize: 18),
                      ),
                      GestureDetector(
                        child: SvgPicture.asset(
                          "assets/icons/bluetooth.svg",
                          height: 25,
                          width: 17,
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: SvgPicture.asset(
                          "assets/icons/w.svg",
                          height: 25,
                          width: 17,
                        ),
                        onTap: () {},
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                        width: MediaQuery.of(context).size.width * 0.12,
                        height: MediaQuery.of(context).size.width * 0.10,
                        child: TextField(
                          controller: _moistureController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 14.0, color: Colors.white),
                          decoration: new InputDecoration(
                            filled: true,
                            fillColor: Colors.green,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '%',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        child: RaisedButton(
                          child: Text(
                            'Manual Entry',
                            style: TextStyle(fontSize: 12.5),
                          ),
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

                            // _startChat(context, selectedDevice);
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Container(
                    height: 0.5,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 25),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Damaged',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.19,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                        width: MediaQuery.of(context).size.width * 0.12,
                        height: MediaQuery.of(context).size.width * 0.10,
                        child: TextField(
                          controller: _damageController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 14.0),
                          decoration: new InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.5)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.5),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        ' Units',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Container(
                    height: 0.5,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                         horizontal: 30, vertical: 10),
                      child: Text('last updated on '),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Text(' 23:15:2'),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    onPressed: () => {Get.toNamed('/loadbags')},
                    color: Colors.cyan[900],
                    textColor: Colors.white,
                    child: Text("Validate Quality",
                        style: TextStyle(fontSize: 18)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.85,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  onPressed: () => {Get.toNamed('/pending')},
                  child: Text("Reset", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 17.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.85,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  onPressed: () => {Get.toNamed('/loadbags')},
                  color: Colors.cyan[900],
                  textColor: Colors.white,
                  child: Text("Qc Values not Matched",
                      style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
            Text(_text),
          ],
        ),
      ),
      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
    );
  }

  function(value) => setState(() => _text = value);
}
