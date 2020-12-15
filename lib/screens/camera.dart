import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bluetooth/screens/otp.dart';
import 'package:flutter_bluetooth/screens/camera_options.dart';

class Camera extends StatefulWidget {
  @override
  _Camera createState() => new _Camera();
}

class _Camera extends State<Camera> {
  // String _selectedLocation;
  File filePathList;
  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String _selectedLocation;
  String onSelectImage;
  @override
  void initState() {
    super.initState();
  }
  void _selectImage(File pickedImage, filename) {

    setState(() {
      filePathList = pickedImage;
      print(pickedImage);
      print(filename);


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Truck Weighment'),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 70,
                        width: 310,
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                            primaryColorDark: Colors.black,
                          ),
                          child: new TextField(
                            decoration:
                                InputDecoration(labelText: 'GatePass Number'),
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
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      child: IconButton(
                          iconSize: 45,
                          icon: Icon(
                            Icons.add_a_photo,
                            color: Colors.blueGrey[700],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CameraGroup(_selectImage)),
                            );

                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 70,
                        width: 310,
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                            primaryColorDark: Colors.black,
                          ),
                          child: new TextField(
                            decoration:
                                InputDecoration(labelText: 'Vehicle Number'),
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
                        width: 310,
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                            primaryColorDark: Colors.black,
                          ),
                          child: new TextField(
                            decoration: InputDecoration(
                                labelText: 'Latitude/Longitude'),
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
                    DropdownButton(
                      hint: Text('Please choose a location'), // Not necessary for Option 1
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
                        width: 350,
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                            primaryColorDark: Colors.black,
                          ),
                          child: new TextField(
                            decoration:
                                InputDecoration(labelText: 'GatePass Number'),
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
                                labelText: 'Truck Gross weight'),
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
                padding: const EdgeInsets.only(left:5 , top:5.0),
                child: Container(
                  height: 70,
                  width: 100,
                  child: DropdownButton(

                    hint: Text('ML'), // Not necessary for Option 1
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
            width:250,
            height: 50,
            child: RaisedButton(
              elevation: 5,
              textColor: Colors.white,
              color: Colors.blueAccent,
              child: Text("Continue Document Upload",style: TextStyle(fontSize: 15),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1)),
              onPressed: () {
                Navigator.push(
                    context,

                         MaterialPageRoute(
                             builder: (context) => OTPPage()),
                      );
              },
            ),
          ),
          filePathList != null ?
          Container(
            width: 100.0,
            height: 100.0,
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: FileImage(filePathList)
                //   image: new FileImage(attachFile),
              ),
            ),
          )
              : SizedBox()
        ],
      ),
    );
  }
}
