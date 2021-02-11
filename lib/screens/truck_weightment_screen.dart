import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bluetooth/widgets/continue_button.dart';
import 'package:flutter_bluetooth/widgets/drop_down.dart';
import 'package:flutter_bluetooth/widgets/text_field.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_svg/svg.dart';

enum SingingCharacter {
  CaptureFontNumberPlate,
  CaptureRearNumberPlate,
  CaptureFrontView,
  CaptureRearView,
  CaptureRightSideView,
  CaptureLeftSideView,
  CaptureTopView,
  GatePass
}

class TruckWeightment extends StatefulWidget {
  static const routeName = '/Camera';

  TruckWeightment({Key key}) : super(key: key);

  @override
  _TruckWeightment createState() => new _TruckWeightment();
}

class _TruckWeightment extends State<TruckWeightment> {
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
      print(_imageFile);
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
          title: const Text('Truck Weighment',style: TextStyle(fontSize: 16),),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 1,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
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
                                width: MediaQuery.of(context).size.width * 0.75,
                                child: CustomTextField(label: 'GatePass Number',)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 25),
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                                child: SvgPicture.asset(
                                  "assets/icons/photo-add.svg",
                                  height: 55,
                                  width: 55,
                                ),

                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (_) => Material(
                                      type: MaterialType.transparency,
                                      child: Center(
                                        // Aligns the container to center
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              1,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          margin: EdgeInsets.only(
                                              top: Constants.avatarRadius),
                                          decoration: BoxDecoration(
                                              // shape: BoxShape.rectangle,
                                              color: Colors.black87,
                                              // borderRadius: BorderRadius.circular(Constants.padding),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.transparent,
                                                    offset: Offset(0, 10),
                                                    blurRadius: 25),
                                              ]),
                                          child: ListView(
                                            children: <Widget>[
                                              Positioned(
                                                right: 0.0,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: CircleAvatar(
                                                      radius: 14.0,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      child: Icon(Icons.close,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 35),
                                                child: Text(
                                                  'Please selecct a view to capture:',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                  // textAlign: TextAlign.center,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 2,
                                              ),
                                              Theme(
                                                data: Theme.of(context)
                                                    .copyWith(
                                                        unselectedWidgetColor:
                                                            Colors.white,
                                                        disabledColor:
                                                            Colors.blue),
                                                child: Column(
                                                  children: <Widget>[
                                                    RadioListTile<
                                                        SingingCharacter>(
                                                      title: const Text(
                                                        'Capture Font Number Plate',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      value: SingingCharacter
                                                          .CaptureFontNumberPlate,
                                                      groupValue: character,
                                                      activeColor: Colors.white,
                                                      onChanged:
                                                          (SingingCharacter
                                                              value) {
                                                        setState(() {
                                                          character = value;
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile<
                                                        SingingCharacter>(
                                                      title: const Text(
                                                        "Capture Rear Number Plate",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      value: SingingCharacter
                                                          .CaptureRearNumberPlate,
                                                      groupValue: character,
                                                      onChanged:
                                                          (SingingCharacter
                                                              value) {
                                                        setState(() {
                                                          character = value;
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile<
                                                        SingingCharacter>(
                                                      activeColor: Colors.white,
                                                      title: const Text(
                                                        "Capture Front View",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      value: SingingCharacter
                                                          .CaptureFrontView,
                                                      groupValue: character,
                                                      onChanged:
                                                          (SingingCharacter
                                                              value) {
                                                        setState(() {
                                                          character = value;
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile<
                                                        SingingCharacter>(
                                                      title: const Text(
                                                        "Capture Rear View",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      value: SingingCharacter
                                                          .CaptureRearView,
                                                      groupValue: character,
                                                      onChanged:
                                                          (SingingCharacter
                                                              value) {
                                                        setState(() {
                                                          character = value;
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile<
                                                        SingingCharacter>(
                                                      title: const Text(
                                                        "Capture Top View",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      value: SingingCharacter
                                                          .CaptureTopView,
                                                      groupValue: character,
                                                      onChanged:
                                                          (SingingCharacter
                                                              value) {
                                                        setState(() {
                                                          character = value;
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile<
                                                        SingingCharacter>(
                                                      title: const Text(
                                                        "Gate Pass",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      value: SingingCharacter
                                                          .GatePass,
                                                      groupValue: character,
                                                      onChanged:
                                                          (SingingCharacter
                                                              value) {
                                                        setState(() {
                                                          character = value;
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              RaisedButton.icon(
                                                icon: Icon(
                                                    Icons.camera_alt_outlined),
                                                // <-- Icon you want.
                                                textColor: Colors.black87,
                                                color: Colors.white,
                                                label:
                                                    const Text('Capture Photo'),
                                                // <-- Your text.
                                                // onPressed:() => _showCamera(),
                                                onPressed: () {
                                                  isVideo = false;
                                                  onImageButtonPressed(
                                                      ImageSource.camera,
                                                      context: context);
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
                                                    onTap: () => _removeImage(
                                                        attachmentList[index]),
                                                    child: Card(
                                                      elevation: 10,
                                                      color: Colors.white,
                                                      shape: CircleBorder(),
                                                      child: SvgPicture.asset(
                                                        "assets/icons/Group 179.svg",
                                                        height: 25,
                                                        width: 25,
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
                                height: MediaQuery.of(context).size.height*0.085,
                                width:  MediaQuery.of(context).size.width*0.95,
                                child: new Theme(
                                  data: new ThemeData(
                                    primaryColor: Colors.black,
                                    primaryColorDark: Colors.black,
                                  ),
                                  child:
                                  CustomTextField(label: 'Vehicle No',),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height*0.12,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: CustomDropDown(_selectedLocation,_locations,'Weigh Bridge Name')
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                          color: Colors.green[900],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35)),
                          child: const Text(
                            'Manual',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {}),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:15.0),
                        child: FlatButton(
                            color: Colors.teal[900],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35)),
                            child: const Text(
                              'Auto Capture',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),

                 Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Flexible(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:10.0),
                                    child: CustomTextField( label: 'Truck Gross weight',),
                                  ),
                                ),
                                // SizedBox(width: 12,),
                                Flexible(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top:20.0,left: 25),
                                      child: CustomDropDown(_selectedLocation,_locations,'ML',),
                                    ),
                                ),

                              ],
                            ),

              Container(
                height: MediaQuery.of(context).size.height*0.095,
                width:  MediaQuery.of(context).size.width*0.95,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 13),
                  child: CustomTextField(label:'Weighment Slip SL. No.' ,),
                ),
              ),
                  Container(
                    height: MediaQuery.of(context).size.height* 0.1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      child: ContinueButton(
                          'Continue Document Upload', '/uploaddocuemnts'),
                    ),
                  ),
                  // Container(
                  //   height: MediaQuery.of(context).size.height* 0.07,
                  //   child: Padding(
                  //     padding: EdgeInsets.symmetric(horizontal: 15,),
                  //     child: RaisedButton(
                  //       elevation: 5,
                  //       textColor: Colors.white,
                  //       color: Colors.green[900],
                  //       child: Text(
                  //         "Manual Weighment Entry",
                  //         style: TextStyle(fontSize: 15),
                  //       ),
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(1)),
                  //       onPressed: () {
                  //         Get.toNamed('/pending');
                  //       },
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
}

class Constants {
  Constants._();

  static const double padding = 20;
  static const double avatarRadius = 45;
}
