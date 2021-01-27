import 'dart:async';
import 'dart:io';
import 'package:flutter_bluetooth/widgets/continue_button.dart';
import 'package:path/path.dart' as path;
/// Flutter code sample for Scaffold.endDrawer
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/screens/truck_weightment_screen.dart';
import 'package:flutter_bluetooth/widgets/app_widget.dart';
import 'package:flutter_bluetooth/widgets/otp_screen.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:flutter_bluetooth/widgets/vehicle_widget.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timeline_tile/timeline_tile.dart';

/// This is the stateful widget that the main application instantiates.
class PendingNotes extends StatefulWidget {
  PendingNotes({Key key}) : super(key: key);

  @override
  _PendingApprovalsState createState() => _PendingApprovalsState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PendingApprovalsState extends State<PendingNotes> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  StreamController<ErrorAnimationType> errorController;
  TextEditingController textEditingController = TextEditingController();

  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }
  File filePathList;


  List<File> attachmentList = [];
  String onSelectImage;

  void _removeImage(File pickedFile) {
    setState(() {
      attachmentList.remove(pickedFile);
    });
    // widget.removeImage(pickedFile);
  }


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
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Pending Approvals'),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          WeightWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 95),
            child: Row(
              children: [
                IconButton(
                   icon: new Icon(Icons.notes),

                   // onPressed: (){},
                 ),
                Text("VIEW/ADD NOTES"),
              ],
            ),
          ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal:20),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black87),
          borderRadius: BorderRadius.all(
              Radius.circular(10.0)),
        ),

          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLines: 8,
              decoration: InputDecoration.collapsed(hintText: "Enter your text here"),
            ),
          ),
      ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical:12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 attachmentList.length != 0
                ? Container(
              height: MediaQuery.of(context).size.height*0.17
              ,
              width: MediaQuery.of(context).size.width * 0.75,
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
                            width: MediaQuery.of(context).size.width*0.22,
                            height: MediaQuery.of(context).size.height*1,
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
                        attachmentList.length != 0
                            ? GestureDetector(
                          onTap: () => _removeImage(
                              attachmentList[index]),
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
                      ],
                    ),
                    onTap: () async {},
                  )
                      : SizedBox();
                },
              ),
            )
                : SizedBox(),
                 Column(
                   // crossAxisAlignment: CrossAxisAlignment.end,
                   children: <Widget>[
                     IconButton(
                         iconSize: 45,
                         icon: Padding(
                           padding: const EdgeInsets.only(right:15.0),
                           child: Icon(
                             Icons.add_a_photo,
                             color: Colors.blueGrey[700],
                           ),
                         ),
                         onPressed: () {
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
                         }
                     ),
                   ],
                 ),
               ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:1.0,horizontal: 15),
          child: ContinueButton('CHECK APPROVAL STATUS','/pending'),
        )
        ],
      ),

      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
    );
  }

  Widget _CustomButton() {
    return Container(
      height: 30,
      width: 195,
      child: FlatButton(
        color: Colors.white,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: Colors.black87.withOpacity(0.8)),
                    child: Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      child: CustomDialogBox(context,'Manual Weighment'),
                    ));
              });
        },
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            'ENTER OTP TO VALIDATE',
            style: TextStyle(color: Colors.green[800], fontSize: 13.5),
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(color: Colors.green)),
      ),
    );
  }

}
class Constants {
  Constants._();

  static const double padding = 20;
  static const double avatarRadius = 45;
}
