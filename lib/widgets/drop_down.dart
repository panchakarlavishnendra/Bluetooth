import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropDown extends StatefulWidget {
  CustomDropDown(this._selectedLocation, this.list, this.text);

  var _selectedLocation;
  List list;
  var text;

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text(widget.text),
      // Not necessary for Option 1
      value: widget._selectedLocation,
      isExpanded: true,
      onChanged: (newValue) {
        setState(() {
          widget._selectedLocation = newValue;
        });
      },
      items: widget.list.map((location) {
        return DropdownMenuItem(
          child: new Text(location),
          value: location,
        );
      }).toList(),
    );
  }
}
