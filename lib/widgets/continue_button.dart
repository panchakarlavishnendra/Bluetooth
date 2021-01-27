import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContinueButton extends StatefulWidget {
  ContinueButton(this.url);

  var url;

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
      child: Padding(
        padding: const EdgeInsets.only(
            top: 13.0, bottom: 13.0, left: 100, right: 100),
        child: Text("Continue", style: TextStyle(fontSize: 14)),
      ),
    );
  }
}
