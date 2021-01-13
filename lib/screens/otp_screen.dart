
import 'dart:async';
import 'dart:ui';
// import 'package:custom_dialog_flutter_demo/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:get/get.dart';

class OTPPage extends StatefulWidget {
  // final String title, descriptions, text;
  // final Image img;
  String currentText;
  // const CustomDialogBox({Key key, this.title, this.descriptions, this.text, this.img}) : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<OTPPage> {
  final formKey = GlobalKey<FormState>();
  String currentText = "";
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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


    return Stack(
      children: <Widget>[
        Container(
          height: 400,
          width: MediaQuery.of(context).size.width * 0.95,
          padding: EdgeInsets.only(
            left: 20,
            top: 0,
            right: 20,
            bottom: 20,
          ),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constants.padding),
              boxShadow: [
                BoxShadow(
                    color: Colors.transparent,
                    offset: Offset(0, 10),
                    blurRadius: 10
                ),
              ]
          ),



            child: ListView(
              children: <Widget>[
                Positioned(
                  right: 10.0,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 6.0,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.close, color: Colors.black),
                      ),
                    ),
                  ),
                ),

                Text(
                  'Moisture Value',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: const EdgeInsets.only(left : 18.0),
                  child: Text(
                    'Enter OTP',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    // textAlign: TextAlign.left,
                  ),
                ),
                Form(
                  key: formKey,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
                    child: PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 4,
                      obscureText: false,
                      obscuringCharacter: '*',
                      animationType: AnimationType.none,
                      validator: (v) {
                          if (v.length < 3) {
                            return "I'm from validator";
                          } else {
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 60,
                          fieldWidth: 50,
                          activeFillColor: Colors.white,
                            inactiveFillColor :Colors.white24,
                          inactiveColor:Colors.black87
                        ),
                        cursorColor: Colors.black,
                        animationDuration: Duration(milliseconds: 300),
                        textStyle: TextStyle(fontSize: 20, height: 1.6),
                        backgroundColor: Colors.white,
                        // enableActiveFill: true,
                        // enablePinAutofill: true,
                        errorAnimationController: errorController,
                        controller: textEditingController,
                        keyboardType: TextInputType.number,
                        // boxShadows: [
                        //   BoxShadow(
                        //     offset: Offset(0, 1),
                        //     color: Colors.black12,
                        //     blurRadius: 10,
                        //   )
                        // ],
                        onCompleted: (v) {
                          print("Completed");
                        },
                        onTap: () {
                          print("Pressed");
                        },
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    hasError ? "*Please fill up all the cells properly" : "",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),


                SizedBox(
                  height: 1,
                ),
                Container(
                  margin:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
                  child: ButtonTheme(
                    height: 10,
                    child: FlatButton(
                    onPressed: () {
                      Get.toNamed('');
                    },
                    child: Center(
                        child: Text(
                      "Continue".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  ),
                  decoration: BoxDecoration(
                      color:  Colors.teal[900],
                      borderRadius: BorderRadius.circular(5),
                     ),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
                  margin:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
                  child: ButtonTheme(
                    height: 10,
                    child: FlatButton(
                      onPressed: () {
                        Get.toNamed('/truckweightment');
                    },
                    child: Center(
                        child: Text(
                      "VERIFY LATER".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  ),
                  decoration: BoxDecoration(
                      color:  Colors.teal[900],
                      borderRadius: BorderRadius.circular(5),
                      ),
                ),

              ],
            ),
          ),

      ],
    );
  }

}
class Constants{
  Constants._();
  static const double padding =20;
  static const double avatarRadius =45;
}