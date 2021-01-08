import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bluetooth/screens/otp_screen.dart';
import 'package:get/get.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:path/path.dart' as path;

enum SingingCharacter {  CaptureFontNumberPlate,
CaptureRearNumberPlate,
CaptureFrontView,
CaptureRearView,
CaptureRightSideView,
CaptureLeftSideView,
CaptureTopView,
GatePass }

class Camera extends StatefulWidget {
  static const routeName = '/Camera';
  Camera({Key key}) : super(key: key);
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
  final formKey = GlobalKey<FormState>();
  String _verticalGroupValue = "Gate Pass";
  StreamController<ErrorAnimationType> errorController;
  bool isVideo = false;
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  File pickedImage;
  String fileName;

  SingingCharacter character = SingingCharacter.GatePass;

  void onImageButtonPressed(ImageSource source, {BuildContext context}) async {
    final pickedFile = await _picker.getImage(
      source: source,

    );
    print(pickedFile.path);
    setState(() {
      pickedImage = File(pickedFile.path);
      fileName = path.basename(pickedFile.path);
          filePathList = pickedImage;
          attachmentList.add(pickedImage);
      print(_imageFile );
    });
    // widget.selectImage(pickedImage ,fileName );

  }




  @override
  void initState() {
    super.initState();
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
          child: Container(
            height: MediaQuery.of(context).size.height*0.9,
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
                                  // primaryColor: Colors.black87,
                                  // primaryColorDark: Colors.black87,
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
                                  showDialog(
                                    context: context,
                                    builder: (_) => Material(
                                      type: MaterialType.transparency,
                                      child: Center(
                                        // Aligns the container to center
                                        child: Container(
                                          height: MediaQuery.of(context).size.height*1,
                                          width:MediaQuery.of(context).size.width*1,


                                          margin: EdgeInsets.only(top: Constants.avatarRadius),
                                          decoration: BoxDecoration(
                                              // shape: BoxShape.rectangle,
                                              color: Colors.black87,
                                              // borderRadius: BorderRadius.circular(Constants.padding),
                                              boxShadow: [
                                                BoxShadow(color: Colors.transparent,offset: Offset(0,10),
                                                    blurRadius: 25
                                                ),
                                              ]
                                          ),



                                          child:
                                          ListView(
                                            children: <Widget>[
                                              Positioned(
                                                right: 0.0,
                                                child: GestureDetector(
                                                  onTap: (){
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Align(
                                                    alignment: Alignment.topRight,
                                                    child: CircleAvatar(
                                                      radius: 14.0,
                                                      backgroundColor: Colors.transparent,

                                                      child: Icon(Icons.close, color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.only(left: 35),
                                                child: Text(
                                                  'Please selecct a view to capture:',
                                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14 , color: Colors.white),
                                                  // textAlign: TextAlign.center,
                                                ),
                                              ),

                                              SizedBox(
                                                height: 2,
                                              ),

                                              Theme(
                                                data:  Theme.of(context).copyWith(
                                                unselectedWidgetColor: Colors.white,
                                                disabledColor: Colors.blue),
                                                child: Column(
                                                  children: <Widget>[
                                                    RadioListTile<SingingCharacter>(
                                                      title: const Text('Capture Font Number Plate', style: TextStyle(
                                                        color: Colors.white
                                                      ),),
                                                      value: SingingCharacter.CaptureFontNumberPlate,
                                                      groupValue: character,
                                                      activeColor: Colors.white,
                                                      onChanged: (SingingCharacter value) { setState(() { character = value;

                                                      }); },
                                                    ),
                                                     RadioListTile<SingingCharacter>(
                                                      title: const Text("Capture Rear Number Plate", style: TextStyle(
                                                        color: Colors.white
                                                      ),),
                                                      value: SingingCharacter.CaptureRearNumberPlate,
                                                      groupValue: character,
                                                      onChanged: (SingingCharacter value) { setState(() { character = value; }); },
                                                    ),
                                                     RadioListTile<SingingCharacter>(
                                                       activeColor: Colors.white,
                                                      title: const Text("Capture Front View", style: TextStyle(
                                                        color: Colors.white
                                                      ),),
                                                      value: SingingCharacter.CaptureFrontView,
                                                      groupValue: character,
                                                      onChanged: (SingingCharacter value) { setState(() { character = value; }); },
                                                    ),
                                                     RadioListTile<SingingCharacter>(
                                                      title: const Text("Capture Rear View", style: TextStyle(
                                                        color: Colors.white
                                                      ),),
                                                      value: SingingCharacter.CaptureRearView,
                                                      groupValue: character,
                                                      onChanged: (SingingCharacter value) { setState(() { character = value; }); },
                                                    ),
                                                     RadioListTile<SingingCharacter>(
                                                      title: const Text("Capture Top View", style: TextStyle(
                                                        color: Colors.white
                                                      ),),
                                                      value: SingingCharacter.CaptureTopView,
                                                      groupValue: character,
                                                      onChanged: (SingingCharacter value) { setState(() { character = value; }); },
                                                    ),
                                                     RadioListTile<SingingCharacter>(
                                                      title: const Text("Gate Pass", style: TextStyle(
                                                        color: Colors.white
                                                      ),),
                                                      value: SingingCharacter.GatePass,
                                                      groupValue: character,
                                                      onChanged: (SingingCharacter value) { setState(() { character = value; }); },
                                                    ),

                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              RaisedButton.icon(

                                                icon: Icon(Icons.camera_alt_outlined), // <-- Icon you want.
                                                textColor: Colors.black87,
                                                color: Colors.white,
                                                label: const Text('Capture Photo'), // <-- Your text.
                                                // onPressed:() => _showCamera(),
                                                onPressed: () {
                                                  isVideo = false;
                                                  onImageButtonPressed(ImageSource.camera, context: context);
                                                  Navigator.of(context).pop();
                                                },
                                              )

                                            ],

                                          ),



                                        ),
                                      ),
                                    ),
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
                                        Positioned(
                                          top: 0,
                                          right: 0,
                                          child: attachmentList.length != 0
                                              ? GestureDetector(
                                            onTap: () =>
                                                _removeImage(attachmentList[index]),
                                            child: Card(
                                              elevation: 10,
                                              color: Colors.white,
                                              shape: CircleBorder(),
                                              child: Icon(
                                                Icons.clear,
                                                size: 18,
                                              ),
                                            ),
                                          )
                                              : SizedBox(),
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
                     Get.toNamed('/quality');
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }


}
class Constants{
  Constants._();
  static const double padding =20;
  static const double avatarRadius =45;
}