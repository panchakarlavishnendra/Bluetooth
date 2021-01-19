import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:get/get.dart';

const List<String> assetNames = <String>['assets/bluetooth.svg'];

class QualityCheck extends StatefulWidget {
  @override
  _QualityCheckState createState() => _QualityCheckState();
}

class _QualityCheckState extends State<QualityCheck> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  final _moistureController = TextEditingController();

  final _damageController = TextEditingController();

  void dispose() {
    _moistureController.dispose();
    _damageController.dispose();
  }

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
                      child: Icon(
                        Icons.home,
                        size: 50,
                      ),
                    ),
                    Text(
                      'Address',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Text('Assayer'),
                Text('Loremepsum'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
                          horizontal: 35.0, vertical: 18),
                      child: Text('QC Parameter', style: style),
                    ),
                    Text(
                      'Value',
                      style: style,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
                        child: Icon(
                          Icons.bluetooth,
                          size: 25,
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.mail,
                          size: 25,
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
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        child: RaisedButton(
                          child: Text(
                            'Manual Entry',
                            style: TextStyle(fontSize: 12.5),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 0.5,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 25),
                  child: Row(
                    children: [
                      Text(
                        'Damaged',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
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
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 0.5,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Text('last updated on '),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  // color: Colors.blueAccent,
                  child: RaisedButton(
                    color: Colors.teal,
                    onPressed: () {
                      Get.toNamed('/loadbags');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'Validate Quality',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            ),
            Positioned(
              bottom: 0.0,
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: RaisedButton(
                    onPressed: () {
                      Get.toNamed('/pending');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text('Reset'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
    );
  }
}
