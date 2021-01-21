import 'dart:async';

/// Flutter code sample for Scaffold.endDrawer
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/app_widget.dart';
import 'package:flutter_bluetooth/widgets/otp_screen.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timeline_tile/timeline_tile.dart';

/// This is the stateful widget that the main application instantiates.
class PendingApprovals extends StatefulWidget {
  PendingApprovals({Key key}) : super(key: key);

  @override
  _PendingApprovalsState createState() => _PendingApprovalsState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PendingApprovalsState extends State<PendingApprovals> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Drawer Demo'),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          CustomWidget(),
          Container(
            height: 145,
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              isFirst: true,
              lineXY: 0.25,
              hasIndicator: true,
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.green,
                // indicatorXY: 0.5,
                padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              endChild: Container(
                child: Padding(
                  // padding: const EdgeInsets.only(top: 116.0),
                  padding: const EdgeInsets.only(top: 56.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Manual Weighment (Gross)"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Weight Entered :515.00 MIN"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: _CustomButton(),
                      )
                    ],
                  ),
                ),
              ),
              startChild: Padding(
                // padding: const EdgeInsets.only(left: 108.0, top: 131),
                padding: const EdgeInsets.only(left: 3.0, top: 60),

                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text("26/8/2021",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "4:50pm",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 145,
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              // isFirst: true,
              lineXY: 0.25,
              hasIndicator: true,
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.green,
                // indicatorXY: 0.5,
                padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              endChild: Container(
                child: Padding(
                  // padding: const EdgeInsets.only(top: 116.0),
                  padding: const EdgeInsets.only(top: 56.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Manual Weighment (Gross)"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Weight Entered :515.00 MIN"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: _CustomButton(),
                      )

                      // )),
                    ],
                  ),
                ),
              ),
              startChild: Padding(
                // padding: const EdgeInsets.only(left: 108.0, top: 131),
                padding: const EdgeInsets.only(left: 3.0, top: 60),

                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text("26/8/2021",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "4:50pm",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 145,
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              // isLast: true,
              lineXY: 0.25,
              hasIndicator: true,
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.green,
                // indicatorXY: 0.5,
                padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              endChild: Container(
                child: Padding(
                  // padding: const EdgeInsets.only(top: 116.0),
                  padding: const EdgeInsets.only(top: 56.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Manual Weighment (Gross)"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Weight Entered :515.00 MIN"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: _CustomButton(),
                      )
                    ],
                  ),
                ),
              ),
              startChild: Padding(
                // padding: const EdgeInsets.only(left: 108.0, top: 131),
                padding: const EdgeInsets.only(left: 3.0, top: 60),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text("26/8/2021",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "4:50pm",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 145,
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              isLast: true,
              lineXY: 0.25,
              hasIndicator: true,
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.green,
                // indicatorXY: 0.5,
                padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              endChild: Container(
                child: Padding(
                  // padding: const EdgeInsets.only(top: 116.0),
                  padding: const EdgeInsets.only(top: 56.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Manual Weighment (Gross)"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Weight Entered :515.00 MIN"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: _CustomButton(),
                      )
                    ],
                  ),
                ),
              ),
              startChild: Padding(
                // padding: const EdgeInsets.only(left: 108.0, top: 131),
                padding: const EdgeInsets.only(left: 3.0, top: 60),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text("26/8/2021",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "4:50pm",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.85,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0),
                ),
                onPressed: () => {Get.toNamed('/success')},
                color: Colors.cyan[900],
                textColor: Colors.white,
                child: Text("Continue", style: TextStyle(fontSize: 18)),
              ),
            ),
          ),
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
                      child: CustomDialogBox(context),
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
// Widget contentBox(context){
//   return Stack(
//     children: <Widget>[
//       Container(
//         height: 400,
//         width: MediaQuery.of(context).size.width * 0.95,
//         padding: EdgeInsets.only(
//           left: 20,
//           top: 0,
//           right: 20,
//           bottom: 20,
//         ),
//         margin: EdgeInsets.only(top: Constants.avatarRadius),
//         decoration: BoxDecoration(
//             shape: BoxShape.rectangle,
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(Constants.padding),
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.transparent,
//                   offset: Offset(0, 10),
//                   blurRadius: 10
//               ),
//             ]
//         ),
//
//
//
//         child: ListView(
//           children: <Widget>[
//             GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//               },
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: CircleAvatar(
//                   radius: 6.0,
//                   backgroundColor: Colors.white,
//                   child: Icon(Icons.close, color: Colors.black),
//                 ),
//               ),
//             ),
//             Text(
//               'Moisture Value',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(
//               height: 22,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left : 18.0),
//               child: Text(
//                 'Enter OTP',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                 // textAlign: TextAlign.left,
//               ),
//             ),
//             Form(
//               key: formKey,
//               child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 8.0, horizontal: 10),
//                   child: PinCodeTextField(
//                     appContext: context,
//                     pastedTextStyle: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     length: 4,
//                     obscureText: false,
//                     obscuringCharacter: '*',
//                     animationType: AnimationType.none,
//                     validator: (v) {
//                       if (v.length < 3) {
//                         return "I'm from validator";
//                       } else {
//                         return null;
//                       }
//                     },
//                     pinTheme: PinTheme(
//                         shape: PinCodeFieldShape.box,
//                         borderRadius: BorderRadius.circular(5),
//                         fieldHeight: 60,
//                         fieldWidth: 50,
//                         activeFillColor: Colors.white,
//                         inactiveFillColor :Colors.white24,
//                         inactiveColor:Colors.black87
//                     ),
//                     cursorColor: Colors.black,
//                     animationDuration: Duration(milliseconds: 300),
//                     textStyle: TextStyle(fontSize: 20, height: 1.6),
//                     backgroundColor: Colors.white,
//                     // enableActiveFill: true,
//                     // enablePinAutofill: true,
//                     errorAnimationController: errorController,
//                     controller: textEditingController,
//                     keyboardType: TextInputType.number,
//                     // boxShadows: [
//                     //   BoxShadow(
//                     //     offset: Offset(0, 1),
//                     //     color: Colors.black12,
//                     //     blurRadius: 10,
//                     //   )
//                     // ],
//                     onCompleted: (v) {
//                       print("Completed");
//                     },
//                     onTap: () {
//                       print("Pressed");
//                     },
//                     onChanged: (value) {
//                       print(value);
//                       setState(() {
//                         currentText = value;
//                       });
//                     },
//                     beforeTextPaste: (text) {
//                       print("Allowing to paste $text");
//                       //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
//                       //but you can show anything you want here, like your pop up saying wrong paste format or etc
//                       return true;
//                     },
//                   )),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30.0),
//               child: Text(
//                 hasError ? "*Please fill up all the cells properly" : "",
//                 style: TextStyle(
//                     color: Colors.black87,
//                     fontSize: 12,
//                     fontWeight: FontWeight.w400),
//               ),
//             ),
//
//
//             SizedBox(
//               height: 1,
//             ),
//             Container(
//               margin:
//               const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
//               child: ButtonTheme(
//                 height: 10,
//                 child: FlatButton(
//                   onPressed: () {
//                     Get.toNamed('/pending');
//                   },
//                   child: Center(
//                       child: Text(
//                         "Continue".toUpperCase(),
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold),
//                       )),
//                 ),
//               ),
//               decoration: BoxDecoration(
//                 color:  Colors.teal[900],
//                 borderRadius: BorderRadius.circular(5),
//               ),
//             ),
//             SizedBox(
//               height: 1,
//             ),
//             Container(
//               margin:
//               const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
//               child: ButtonTheme(
//                 height: 10,
//                 child: FlatButton(
//                   onPressed: () {
//                     Get.toNamed('/truckweightment');
//                   },
//                   child: Center(
//                       child: Text(
//                         "VERIFY LATER".toUpperCase(),
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold
//                         ),
//                       )),
//                 ),
//               ),
//               decoration: BoxDecoration(
//                 color:  Colors.teal[900],
//                 borderRadius: BorderRadius.circular(5),
//               ),
//             ),
//
//           ],
//         ),
//       ),
//
//     ],
//   );
// }
}
