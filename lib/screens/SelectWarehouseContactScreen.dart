import 'dart:ui';

import 'package:flutter/material.dart';



class SelectWarehouseContacts extends StatefulWidget {

  SelectWarehouseContacts({Key key}) : super(key: key);
  @override
  _SelectWarehouseContacts createState() => new _SelectWarehouseContacts();
}

class _SelectWarehouseContacts extends State<SelectWarehouseContacts> {

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
        appBar: AppBar(title: Text('Drawer Demo')),
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
                                'Select Warehouse'), // Not necessary for Option 1
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
                                'Select Contract'), // Not necessary for Option 1
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
                                'Select Weigh Bridge'), // Not necessary for Option 1
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
        endDrawer: sideNav()



      // Disable opening the end drawer with a swipe gesture.
      // endDrawerEnableOpenDragGesture: false
      );

  }
  Drawer sideNav(){
    return Drawer(
        child: Stack(
            children: <Widget> [




        //first child be the blur background
        BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0), //this is dependent on the import statment above
        child: Container(
            decoration: BoxDecoration(color: Colors.black87.withOpacity(0.8))
        )
    ),
    ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      Icon(Icons.close, color: Colors.white)

    ]
    )
    ]
    )
    );
  }
}