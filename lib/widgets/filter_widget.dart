import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/continue_button.dart';
import 'package:flutter_bluetooth/widgets/text_field.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'drop_down.dart';

// ignore: must_be_immutable
class Filter extends StatefulWidget {
  Filter(this.context);

  var context;
  String text;
TextEditingController textController = TextEditingController();
  // final String title, descriptions, text;
  // final Image img;
  String currentText;

  // const CustomDialogBox({Key key, this.title, this.descriptions, this.text, this.img}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final formKey = GlobalKey<FormState>();
  String currentText = "";
  String text;
  TextEditingController textController = TextEditingController();
  List<String> _locations = ['A', 'B', 'C', 'D'];
  List<String> _locations2 = ['loc', 'Boc', 'C', 'D'];
  List<String> _locations3 = ['locA', 'BocK', 'C', 'D'];
  String _selectedLocation;
  String _selectedLocation2;
  String _selectedLocation3;

  // ..text = "123456";

  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override

  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    var style = TextStyle(
      fontSize: 15.5,
      color: Colors.black,
    );
    var tStyle = TextStyle(fontSize: 19);
    var padding = const EdgeInsets.all(3.0);
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:18.0,vertical: 20),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.57,
            width: MediaQuery.of(widget.context).size.width * 0.9,
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
                Padding(
                  padding: const EdgeInsets.only(right:14.0,top: 8),
                  child: GestureDetector(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 6.0,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(right:18.0),
                          child: Icon(Icons.close, color: Colors.black),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      print('tap');
                    },
                  ),
                ),
                Text(
                  'Filters'.toUpperCase(),
                  style: TextStyle(fontSize: 19,),
                  textAlign: TextAlign.start,
                ),
                Divider(),
                // SizedBox(
                //   height: 22,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:12.0),
                  child: CustomTextField(label: 'Date',controller:textController ,)
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 7),
                  child: CustomDropDown(
                      _selectedLocation, _locations, 'Client Name'.toUpperCase()),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 7),
                  child: CustomDropDown(
                      _selectedLocation, _locations, 'Contract'.toUpperCase()),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 7),
                  child: CustomDropDown(
                      _selectedLocation, _locations, 'commodity'.toUpperCase()),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.065,
                      width: MediaQuery.of(context).size.width * 0.05,
                      child: ContinueButton('Apply filters'.toUpperCase(), '/pending')),
                ),

              ],
            ),
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
