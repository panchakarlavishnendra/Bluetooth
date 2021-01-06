import 'dart:ui';

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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.75,
              width:MediaQuery.of(context).size.width*1,
              child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 60,
                        width:MediaQuery.of(context).size.width*0.85,
                        child: DropdownButton(
                          hint: Text(
                              'Contact Name ID'), // Not necessary for Option 1
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
                        width:MediaQuery.of(context).size.width*0.85,
                        child: DropdownButton(
                          hint: Text(
                              'Client Name'), // Not necessary for Option 1
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
                        width:MediaQuery.of(context).size.width*0.85,
                        child: DropdownButton(
                          hint: Text(
                              'Commodity'), // Not necessary for Option 1
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
                    Text("Current Balance:"),
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
                                    child: new TextField(
                                      decoration: InputDecoration(
                                          labelText: 'No of Mother Bags'),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
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
                                  width: 150,
                                  child: new Theme(
                                    data: new ThemeData(
                                      primaryColor: Colors.black,
                                      primaryColorDark: Colors.black,
                                    ),
                                    child: new TextField(
                                      decoration: InputDecoration(
                                          labelText: 'No of Made Up Bags'),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
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
                                    child: new TextField(
                                      decoration: InputDecoration(
                                          labelText: 'Total Commodity Weight'),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
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
                    SizedBox(),
                    Text("Select Action:"),
                  ]

              ),



            ),
            RaisedButton(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
              onPressed: () {},
              color: Colors.cyan[900],
              textColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left:100, right: 100, top: 18, bottom: 18),
                child: Text("Continue".toUpperCase(),
                    style: TextStyle(fontSize: 14)),
              ),
            )
          ]

      ),

    );

  }

}