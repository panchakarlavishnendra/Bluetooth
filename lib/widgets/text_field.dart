import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField({
    this.label,
    this.controller,
    this.keyboardType,
    this.maxLength,
  });
  String  label;
  var controller;
  var keyboardType;
  var maxLength;


  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  FocusNode myFocusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
              decoration: InputDecoration(
        labelText: widget.label,
                labelStyle:  myFocusNode.hasFocus ? TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18)
                    :TextStyle()
      ),
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      focusNode: myFocusNode,
      maxLength: widget.maxLength,
      validator: (String value) {
        if (value.isEmpty) {
          return '$widget.label is Required';
        }
        return null;
      },

    );

  }
}

   


