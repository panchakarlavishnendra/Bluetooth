import 'dart:async';
import 'dart:ui';

// import 'package:custom_dialog_flutter_demo/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/continue_button.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomDialogBox extends StatefulWidget {
  CustomDialogBox(this.context, this.text);

  var context;
  String text;

  // final String title, descriptions, text;
  // final Image img;
  String currentText;

  // const CustomDialogBox({Key key, this.title, this.descriptions, this.text, this.img}) : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  final formKey = GlobalKey<FormState>();
  String currentText = "";
  String text;
  TextEditingController textEditingController = TextEditingController();

  // ..text = "123456";

  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {



    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.45,
          width: MediaQuery.of(widget.context).size.width * 0.96,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constants.padding),
              boxShadow: [
                BoxShadow(
                    color: Colors.transparent,
                    offset: Offset(0, 10),
                    blurRadius: 8),
              ]),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () {
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
              Text(
                widget.text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 6),
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
                        vertical: 0.0, horizontal: 10),
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
                          return "please enter the otp";
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 45,
                          fieldWidth: 45,
                          activeFillColor: Colors.white,
                          inactiveFillColor: Colors.white24,
                          inactiveColor: Colors.grey),
                      cursorColor: Colors.black,
                      animationDuration: Duration(milliseconds: 300),
                      textStyle: TextStyle(fontSize: 20, height: 1.6),
                      backgroundColor: Colors.white,
                      // enableActiveFill: true,
                      // enablePinAutofill: true,
                      errorAnimationController: errorController,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,

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
              Container(
                  height: MediaQuery.of(context).size.height * 0.065,
                  width: MediaQuery.of(context).size.width * 0.10,
                  child: ContinueButton('Continue', '/pending')),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: ButtonTheme(
                  height: 10,
                  child: FlatButton(
                    onPressed: () {
                      Get.toNamed('/truckweightment');
                    },
                    child: Center(
                        child: Text(
                      "Verify Later",
                      style: TextStyle(
                          color: Colors.teal[900],
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                decoration: BoxDecoration(
                  // color: Colors.teal[900],
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

class Constants {
  Constants._();

  static const double padding = 20;
  static const double avatarRadius = 45;
}
