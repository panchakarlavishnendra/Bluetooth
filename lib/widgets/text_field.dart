import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField({
    this.label,
    this.controller,
    this.keyboardType,
    this.onSaved,
    this.maxLength,
  });
  String  label;
  var controller;
  var keyboardType;
  var onSaved;
  var maxLength;
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
              decoration: InputDecoration(
        labelText: widget.label,
      ),
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      maxLength: widget.maxLength,
      validator: (String value) {
        if (value.isEmpty) {
          return '$widget.label is Required';
        }
        return null;
      },
      onSaved: widget.onSaved,
    );

  }
}

   


