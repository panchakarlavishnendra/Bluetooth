// import 'dart:io';
// import 'package:camera/camera.dart';
// // import 'package:permission_handler/permission_handler.dart';
// import 'package:file_picker/file_picker.dart';
// // import 'package:provider/provider.dart';
// import 'package:flutter/material.dart';
// //import 'package:image_picker/image_picker.dart';
// import 'package:path/path.dart' as path;
// import 'package:path_provider/path_provider.dart' as syspaths;
//
//
// import 'take_pictures_page.dart';
//
// //List<CameraDescription> cameras;
// // var camera;
//
// //Future<void> main() async {
// //  cameras = await availableCameras();
// //}
//
// class ImageInput extends StatefulWidget {
//   final Function onSelectImage;
//
//   ImageInput(this.onSelectImage);
//
//   @override
//   _ImageInputState createState() => _ImageInputState();
// }
//
// class _ImageInputState extends State<ImageInput> {
//   File _storedImage;
//   String _filename;
//   List dropdownOptions = [
//     {
//       "value": "2",
//       "text": "Camera",
//       "icon":Icons.camera_alt
//     },
//
//   ];
//
//   String fileName;
//
//   var pickedFile;
//   // String fileDocName;
//   var savedImage;
//   File attachFile;
//   // final TextEditingController txt = TextEditingController();
//   var showDropdown = false;
//   void toggleFlag() {
//     setState(() {
//       showDropdown = !showDropdown;
//     });
//   }
//
//   Future<void> _takePicture(_value) async {
//     // print('In take picture');
//
//     if (_value == "2") {
//
//
//       pickedFile = await _showCamera();
//       attachFile = File(pickedFile);
//     } else {
//       //to handle audio
//       return;
//     }
//     //  print(fileName);
//     final appDir = await syspaths.getApplicationDocumentsDirectory();
//     fileName = path.basename(attachFile.path);
//     savedImage = await attachFile.copy('${appDir.path}/$fileName');
//     // print(fileName);
//     // print(savedImage);
//     widget.onSelectImage(savedImage, attachFile.path);
//     setState(() {
//       _storedImage = attachFile;
//       _filename = fileName;
//       // txt.text = fileName;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.38,
//       padding: EdgeInsets.only(left: 10),
//       child: DropdownButton(
//         isExpanded: true,
//         underline: SizedBox(),
//         icon: Icon(Icons.attachment, color: Colors.orange),
//         hint: Text("Attach Evidence", style: TextStyle(color: Colors.orange)),
//
//         items: dropdownOptions.map((option) {
//           return DropdownMenuItem(
//             value: option["value"],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 Icon(option["icon"]),
// //                SizedBox(
// //                  width: MediaQuery.of(context).size.width*0.009,
// //                ),
//                 Text(
//                   option["text"],
//                 ),
//               ],
//             ),
//           );
//         }).toList(),
//         onChanged: (value) {
//           setState(() {
//             var _value = value;
//             _takePicture(_value);
//           });
//         },
//         //  value: _value,
//         // underline: SizedBox(),
//         // icon: Icon(Icons.attach_file),
//         // isExpanded: true,
//       ),
//     );
//   }
//
//   _showCamera() async {
//     final cameras = await availableCameras();
//     final camera = cameras.first;
//
//     final result = await Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => TakePicturePage(camera: camera)));
//
//     return result;
//   }
//
// }
