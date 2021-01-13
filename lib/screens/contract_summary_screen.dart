import 'dart:ui';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:flutter_bluetooth/widgets/text_field.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContractSummary extends StatefulWidget {
  ContractSummary({Key key}) : super(key: key);
  @override
  _ContractSummary createState() => new _ContractSummary();
}

class _ContractSummary extends State<ContractSummary> {
  List<String> _locations = ['A', 'B', 'C', 'D'];
  String _selectedLocation;
  final _noOfMadeupBagsController = TextEditingController();
  final _noOfMotherBagsControler = TextEditingController();
  final _totalCommodityController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  void dispose() {
    _totalCommodityController.dispose();
    _noOfMotherBagsControler.dispose();
    _noOfMadeupBagsController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text('Contact Summary')),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width * 1,
            child: ListView(children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: DropdownButton(
                      hint: Text('Contact Name ID'),
                      // Not necessary for Option 1
                      value: _selectedLocation,
                      isExpanded: true,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLocation = newValue;
                        });
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: DropdownButton(
                    hint: Text('Client Name'),
                    // Not necessary for Option 1
                    value: _selectedLocation,
                    isExpanded: true,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedLocation = newValue;
                      });
                    },
                    items: _locations.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: DropdownButton(
                    hint: Text('Commodity'),
                    // Not necessary for Option 1
                    value: _selectedLocation,
                    isExpanded: true,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedLocation = newValue;
                      });
                    },
                    items: _locations.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text("Current Balance:"),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: new Theme(
                              data: new ThemeData(
                                primaryColor: Colors.black,
                                primaryColorDark: Colors.black,
                              ),
                              child: CustomTextField(
                                label: 'No of Mother Bags',
                                keyboardType: TextInputType.number,
                                controller: _noOfMotherBagsControler,
                                // inputFormatters: <TextInputFormatter>[
                                //   FilteringTextInputFormatter.digitsOnly
                                // ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Theme(
                              data: ThemeData(
                                primaryColor: Colors.black,
                                primaryColorDark: Colors.black,
                              ),
                              child: CustomTextField(
                                label: 'No of Made Up Bags',
                                keyboardType: TextInputType.number,
                                controller: _noOfMadeupBagsController,
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 70,
                            width: 200,
                            child: new Theme(
                              data: new ThemeData(
                                primaryColor: Colors.black,
                                primaryColorDark: Colors.black,
                              ),
                              child: CustomTextField(
                                label: 'Total Commodity Weight',
                                keyboardType: TextInputType.number,
                                controller: _totalCommodityController,
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 30.0),
                    child: Container(
                      height: 45,
                      width: 100,
                      child: DropdownButton(
                        hint: Text('MT'), // Not necessary for Option 1
                        value: _selectedLocation,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedLocation = newValue;
                          });
                        },
                        items: _locations.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Text("Select Action:"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: const EdgeInsets.all(10),
                        textColor: Colors.white,
                        color: Colors.green,
                        onPressed: () {
                          // setState(() {
                          //   // istapped = 'Button tapped';
                          // });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text('Inward'),
                        ),
                      ),
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: const EdgeInsets.all(10),
                      textColor: Colors.green,
                      color: Colors.white,
                      onPressed: () {
                        // setState(() {
                        //   // istapped = 'Button tapped';
                        // });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Text('Outward'),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
            ),
            onPressed: () {
              Get.toNamed('/truckweightment');
            },
            color: Colors.cyan[900],
            textColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 100, right: 100, top: 18, bottom: 18),
              child: Text("Continue".toUpperCase(),
                  style: TextStyle(fontSize: 14)),
            ),
          )
        ]),
      ),
      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
