// import 'dart:async';
//
// /// Flutter code sample for Scaffold.endDrawer
// import 'package:flutter/material.dart';
// import 'package:flutter_bluetooth/widgets/app_widget.dart';
// import 'package:flutter_bluetooth/widgets/otp_screen.dart';
// import 'package:flutter_bluetooth/widgets/side_nav.dart';
// import 'package:get/get.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:timeline_tile/timeline_tile.dart';
// import 'package:flutter_svg/svg.dart';
//
// /// This is the stateful widget that the main application instantiates.
// class CheckApproval extends StatefulWidget {
//   CheckApproval({Key key}) : super(key: key);
//
//   @override
//   _CheckApprovalState createState() => _CheckApprovalState();
// }
//
// /// This is the private State class that goes with MyStatefulWidget.
// class _CheckApprovalState extends State<CheckApproval> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   bool hasError = false;
//   String currentText = "";
//   final formKey = GlobalKey<FormState>();
//   StreamController<ErrorAnimationType> errorController;
//   TextEditingController textEditingController = TextEditingController();
//
//   void _openEndDrawer() {
//     _scaffoldKey.currentState.openEndDrawer();
//   }
//
//   void _closeEndDrawer() {
//     Navigator.of(context).pop();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         title: Text('Pending Approvals',style: TextStyle(fontSize: 16),),
//         elevation: 0,
//       ),
//       body: ListView(
//         children: <Widget>[
//           CustomWidget(),
//           Padding(
//             padding: const EdgeInsets.only(left: 18.0),
//             child: Container(
//               height: 145,
//               color: Colors.white,
//               child: TimelineTile(
//                 alignment: TimelineAlign.manual,
//                 isFirst: true,
//                 lineXY: 0.28,
//                 hasIndicator: true,
//                 indicatorStyle: IndicatorStyle(
//                   width: 25,
//                   color: Colors.green,
//                   indicator: SvgPicture.asset(
//                     "assets/icons/timeline1.svg",
//                     height: 25,
//                     width: 25,
//                   ),
//                   padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
//                 ),
//                 endChild: Container(
//                   child: Padding(
//                     // padding: const EdgeInsets.only(top: 116.0),
//                     padding: const EdgeInsets.only(top: 56.0),
//
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 8.0),
//                           child: Text("Manual Weighment (Gross)"),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 8.0),
//                           child: Text("Weight Entered :515.00 MIN"),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 0.0),
//                           child: Row(
//                             children: [
//
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 startChild: Padding(
//                   // padding: const EdgeInsets.only(left: 108.0, top: 131),
//                   padding: const EdgeInsets.only(top: 60),
//
//                   child: Column(
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 5.0),
//                         child: Text("26/8/2021",
//                             style: TextStyle(fontWeight: FontWeight.bold)),
//                       ),
//                       Text(
//                         "4:50pm",
//                         style: TextStyle(fontSize: 12),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 18.0),
//             child: Container(
//               height: 145,
//               color: Colors.white,
//               child: TimelineTile(
//                 alignment: TimelineAlign.manual,
//                 // isFirst: true,
//                 lineXY: 0.28,
//                 hasIndicator: true,
//                 indicatorStyle: IndicatorStyle(
//                   width: 25,
//                   color: Colors.green,
//                   // indicatorXY: 0.5,
//                   indicator: SvgPicture.asset(
//                     "assets/icons/timeline2.svg",
//                     height: 25,
//                     width: 25,
//                   ),
//
//                   padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
//                 ),
//                 endChild: Container(
//                   child: Padding(
//                     // padding: const EdgeInsets.only(top: 116.0),
//                     padding: const EdgeInsets.only(top: 56.0),
//
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 8.0),
//                           child: Text("Manual Weighment (Gross)"),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 8.0),
//                           child: Text("Weight Entered :515.00 MIN"),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 0.0),
//                           child: _CustomButton(),
//                         )
//
//                         // )),
//                       ],
//                     ),
//                   ),
//                 ),
//                 startChild: Padding(
//                   // padding: const EdgeInsets.only(left: 108.0, top: 131),
//                   padding: const EdgeInsets.only(top: 60),
//
//                   child: Column(
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 5.0),
//                         child: Text("26/8/2021",
//                             style: TextStyle(fontWeight: FontWeight.bold)),
//                       ),
//                       Text(
//                         "4:50pm",
//                         style: TextStyle(fontSize: 12),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 18.0),
//             child: Container(
//               height: 145,
//               color: Colors.white,
//               child: TimelineTile(
//                 alignment: TimelineAlign.manual,
//                 lineXY: 0.28,
//                 hasIndicator: true,
//                 indicatorStyle: IndicatorStyle(
//                   width: 25,
//                   color: Colors.green,
//                   indicator: SvgPicture.asset(
//                     "assets/icons/timeline3.svg",
//                     height: 25,
//                     width: 25,
//                   ),
//                   padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
//                 ),
//                 endChild: Container(
//                   child: Padding(
//                     // padding: const EdgeInsets.only(top: 116.0),
//                     padding: const EdgeInsets.only(top: 56.0),
//
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 8.0),
//                           child: Text("Manual Weighment (Gross)"),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 8.0),
//                           child: Text("Weight Entered :515.00 MIN"),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 0.0),
//                           child: _CustomButton(),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 startChild: Padding(
//                   // padding: const EdgeInsets.only(left: 108.0, top: 131),
//                   padding: const EdgeInsets.only(top: 60),
//                   child: Column(
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 5.0),
//                         child: Text("26/8/2021",
//                             style: TextStyle(fontWeight: FontWeight.bold)),
//                       ),
//                       Text(
//                         "4:50pm",
//                         style: TextStyle(fontSize: 12),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 8.0,
//                         ),
//                         child: Row(
//                           children: [
//                             Text('NOTES'),
//                             GestureDetector(
//                               child: Padding(
//                                 padding: const EdgeInsets.only(left: 1),
//                                 child: SvgPicture.asset(
//                                   "assets/icons/notes.svg",
//                                   height: 25,
//                                   width: 25,
//                                 ),
//                               ),
//                               onTap: () {
//                                 Get.toNamed('/notes');
//                               },
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 18.0),
//             child: Container(
//               height: 145,
//               color: Colors.white,
//               child: TimelineTile(
//                 alignment: TimelineAlign.manual,
//                 isLast: true,
//                 lineXY: 0.28,
//                 hasIndicator: true,
//                 indicatorStyle: IndicatorStyle(
//                   width: 25,
//                   color: Colors.green,
//                   indicator: SvgPicture.asset(
//                     "assets/icons/timeline3.svg",
//                     height: 25,
//                     width: 25,
//                   ),
//                   // indicatorXY: 0.5,
//                   padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
//                 ),
//                 endChild: Container(
//                   child: Padding(
//                     // padding: const EdgeInsets.only(top: 116.0),
//                     padding: const EdgeInsets.only(top: 56.0),
//
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 8.0),
//                           child: Text("Manual Weighment (Gross)"),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 8.0),
//                           child: Text("Weight Entered :515.00 MIN"),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 0.0),
//                           child: _CustomButton(),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 startChild: Padding(
//                   // padding: const EdgeInsets.only(left: 108.0, top: 131),
//                   padding: const EdgeInsets.only(top: 60),
//                   child: Column(
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 5.0),
//                         child: Text("26/8/2021",
//                             style: TextStyle(fontWeight: FontWeight.bold)),
//                       ),
//                       Text(
//                         "4:50pm",
//                         style: TextStyle(fontSize: 12),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding:
//             const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
//             child: Container(
//               height: MediaQuery.of(context).size.height * 0.07,
//               width: MediaQuery.of(context).size.width * 0.85,
//               child: RaisedButton(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(3.0),
//                 ),
//                 onPressed: () => {Get.toNamed('/success')},
//                 color: Colors.cyan[900],
//                 textColor: Colors.white,
//                 child: Text("Continue", style: TextStyle(fontSize: 18)),
//               ),
//             ),
//           ),
//         ],
//       ),
//
//       endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
//       // Disable opening the end drawer with a swipe gesture.
//       endDrawerEnableOpenDragGesture: false,
//     );
//   }
//
//   Widget _CustomButton() {
//     return Container(
//       height: 30,
//       width: 195,
//       child: FlatButton(
//         color: Colors.white,
//         onPressed: () {
//           showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return Theme(
//                     data: Theme.of(context)
//                         .copyWith(canvasColor: Colors.black87.withOpacity(0.8)),
//                     child: Positioned(
//                       top: 0,
//                       child: Dialog(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         elevation: 0,
//                         backgroundColor: Colors.transparent,
//                         child: CustomDialogBox(context, 'Manual Weighment'),
//                       ),
//                     ));
//               });
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(3.0),
//           child: Text(
//             'ENTER OTP TO VALIDATE',
//             style: TextStyle(color: Colors.green[800], fontSize: 13.5),
//           ),
//         ),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//             side: BorderSide(color: Colors.green)),
//       ),
//     );
//   }
//   Widget _aproveButton(){
//   return FlatButton(
//       onPressed: (){},
//       child: Text('Approve')
//   );
//   }
// }
