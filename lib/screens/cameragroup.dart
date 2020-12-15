
import 'dart:async';
import 'dart:io';
import 'dart:ui';
// import 'package:custom_dialog_flutter_demo/constants.dart';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/take_pictures_page.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:path_provider/path_provider.dart' as syspaths;
import 'package:path/path.dart' as path;

class CameraGroup extends StatefulWidget {

  final Function selectImage;

  CameraGroup(this.selectImage);
  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CameraGroup> {

  bool isVideo = false;
  List<File> attachmentList = [];
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  File pickedImage;
  String fileName;
  void onImageButtonPressed(ImageSource source, {BuildContext context}) async {
              final pickedFile = await _picker.getImage(
                source: source,

              );
              print(pickedFile.path);
              setState(() {
                pickedImage = File(pickedFile.path);
                fileName = path.basename(pickedFile.path);
                print(_imageFile );
              });
              widget.selectImage(pickedImage ,fileName );

  }



  String _retrieveDataError;


  final formKey = GlobalKey<FormState>();
  String _verticalGroupValue = "Gate Pass";



  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context){
    TextEditingController textEditingController = TextEditingController();
    // ..text = "123456";

    StreamController<ErrorAnimationType> errorController;
    List<String> _status = [
      "Capture Font Number Plate",
      "Capture Rear Number Plate",
      "Capture Front View",
      "Capture Rear View",
      "Capture Right Side View",
      "Capture Left Side View",
      "Capture Top View",
      "Gate Pass"

    ];

    return Stack(
      children: <Widget>[
        Container(
          height: 500,

          padding: EdgeInsets.only(left: 20,top: 0,
            right:20,bottom: 20,
          ),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constants.padding),
              boxShadow: [
                BoxShadow(color: Colors.transparent,offset: Offset(0,10),
                    blurRadius: 10
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
                          backgroundColor: Colors.white,
                          child: Icon(Icons.close, color: Colors.black),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Please selecct a view to capture:',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  SizedBox(
                    height: 2,
                  ),

                  Column(
                    children: <Widget>[
                      RadioGroup<String>.builder(
                        groupValue: _verticalGroupValue,
                        onChanged: (value) => setState(() {
                          _verticalGroupValue = value;
                        }),
                        items: _status,
                        itemBuilder: (item) => RadioButtonBuilder(
                          item,
                          textPosition: RadioButtonTextPosition.right,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  RaisedButton.icon(
                    icon: Icon(Icons.camera_alt_outlined), // <-- Icon you want.
                    textColor: Colors.black,
                    color: Colors.blueAccent,
                    label: const Text('Capture Photo'), // <-- Your text.
               // onPressed:() => _showCamera(),
                    onPressed: () {
                      isVideo = false;
                      onImageButtonPressed(ImageSource.camera, context: context);
                    },
                  )

                ],

              ),



        ),

      ],

    );

  }
  Text _getRetrieveErrorWidget() {
    if (_retrieveDataError != null) {
      final Text result = Text(_retrieveDataError);
      _retrieveDataError = null;
      return result;
    }
    return null;
  }

}

class Constants{
  Constants._();
  static const double padding =20;
  static const double avatarRadius =45;
}