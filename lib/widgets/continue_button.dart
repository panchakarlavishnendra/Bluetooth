import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContinueButton extends StatefulWidget {
  ContinueButton(this.text,this.url);

  var url;
  String text;

  @override
  _ContinueButtonState createState() => _ContinueButtonState();
}

class _ContinueButtonState extends State<ContinueButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
      ),
      onPressed: () => {Get.toNamed(widget.url)},
      color: Colors.cyan[900],
      textColor: Colors.white,
      child: Text(widget.text, style: TextStyle(fontSize: 14)),
    );
  }
}
