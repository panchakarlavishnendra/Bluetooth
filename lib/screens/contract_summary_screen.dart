import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bluetooth/widgets/drop_down.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:flutter_bluetooth/widgets/text_field.dart';
import 'package:get/get.dart';

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

  // void dispose() {
  //   _totalCommodityController.dispose();
  //   _noOfMotherBagsControler.dispose();
  //   _noOfMadeupBagsController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text('Contact Summary')),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.090,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: CustomDropDown(
                        _selectedLocation, _locations, 'Contact Name ID'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.090,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: CustomDropDown(
                      _selectedLocation, _locations, 'Client Name'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: CustomDropDown(
                      _selectedLocation, _locations, 'Commodity'),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Current Balance:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                            // height: 40,
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
                    padding: const EdgeInsets.only(left: 0, top: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                            // height: 70,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                            // height: 70,
                            width: MediaQuery.of(context).size.width * 0.6,
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
                    padding:
                        const EdgeInsets.only(left: 0, top: 30.0, bottom: 0.0),
                    child: Container(
                      // height: 45,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: DropdownButton(
                        hint: Text('     MT'), // Not necessary for Option 1
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
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Select Action:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height*0.06,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        // padding: const EdgeInsets.all(3),
                        textColor: Colors.white,
                        color: Colors.green,
                        onPressed: () {
                          // setState(() {
                          //   // istapped = 'Button tapped';
                          // });
                        },
                        child: Text('Inward',style: TextStyle(fontSize: 16),),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height*0.06,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        // padding: const EdgeInsets.all(3),
                        textColor: Colors.green,
                        color: Colors.white,
                        onPressed: () {
                          // setState(() {
                          //   // istapped = 'Button tapped';
                          // });
                        },
                        child: Text('Outward',style: TextStyle(fontSize: 18),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.145,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    onPressed: () => {Get.toNamed('/truckweightment')},
                    color: Colors.cyan[900],
                    textColor: Colors.white,
                    child: AutoSizeText("Continue",
                        style: TextStyle(fontSize: 18)),
                  ),
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
