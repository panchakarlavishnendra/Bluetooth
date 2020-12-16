import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bluetooth/screens/otp.dart';
import 'package:flutter_bluetooth/screens/cameragroup.dart';

class Camera extends StatefulWidget {
  @override
  _Camera createState() => new _Camera();
}

class _Camera extends State<Camera> {
  // String _selectedLocation;
  File filePathList;
  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String _selectedLocation;
  List<File> attachmentList = [];
  String onSelectImage;
  @override
  void initState() {
    super.initState();
  }

  void selectImage(File pickedImage, filename) {
    setState(() {
      filePathList = pickedImage;
      attachmentList.add(pickedImage);
      print(pickedImage);
      print(filename);
    });
  }

  void _removeImage(File pickedFile) {
    setState(() {
      attachmentList.remove(pickedFile);
    });
    // widget.removeImage(pickedFile);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Truck Weighment'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.7,
                width:MediaQuery.of(context).size.width*1,

                child: ListView(
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
                                      primaryColor: Colors.white,
                                      primaryColorDark: Colors.white,
                                    ),
                                    child: new TextField(
                                      decoration: InputDecoration(
                                          labelText: 'GatePass Number'),
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
                                            builder: (context) =>
                                                CameraGroup(selectImage)),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    attachmentList.length != 0
                        ? Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 1,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: attachmentList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return attachmentList.length != 0
                                    ? GestureDetector(
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: new Container(
                                                width: 100.0,
                                                height: 100.0,
                                                decoration: new BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: FileImage(
                                                          attachmentList[index])
                                                      // image: new FileImage(attachFile),
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        onTap: () async {},
                                      )
                                    : SizedBox();
                              },
                            ),
                          )
                        : SizedBox(),
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
                                          labelText: 'Vehicle Number'),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Latitude/Longitude',
                          suffixIcon: Icon(Icons.gps_fixed_outlined)
                        ),
                        keyboardType: TextInputType.number,

                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 60,
                        child: DropdownButton(
                          hint: Text(
                              'Please choose a location'), // Not necessary for Option 1
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
                    // Row(
                    //   children: <Widget>[
                    //     Padding(
                    //       padding: const EdgeInsets.only(left: 10, top: 10),
                    //       child: Column(
                    //         children: <Widget>[
                    //
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    //
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
                          padding: const EdgeInsets.only(left: 10, top: 18.0),
                          child: Container(
                            height: 45,
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
                    Padding(
                     padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        elevation: 5,
                        textColor: Colors.white,
                        color: Colors.teal[900],
                        child: Text(
                          "Continue Document Upload",
                          style: TextStyle(fontSize: 15),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OTPPage()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ));
  }
}
