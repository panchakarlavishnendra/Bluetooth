import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/continue_button.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: must_be_immutable
class ReadMoisture extends StatefulWidget {
  ReadMoisture(this.context);

  var context;
  String text;

  // final String title, descriptions, text;
  // final Image img;
  String currentText;

  // const CustomDialogBox({Key key, this.title, this.descriptions, this.text, this.img}) : super(key: key);

  @override
  _ReadMoistureState createState() => _ReadMoistureState();
}

class _ReadMoistureState extends State<ReadMoisture> {
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
    var style = TextStyle(
      fontSize: 15.5,
      color: Colors.black,
    );
    var tStyle = TextStyle(fontSize: 19);
    var padding = const EdgeInsets.all(3.0);
    return Stack(

      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.45,
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
                'Reading Moisture Data',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              Divider(),
              SizedBox(
                height: 22,
              ),
              Container(
                height: MediaQuery.of(widget.context).size.height*0.16,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:28.0),
                  child: Table(
                    // border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: padding,
                          child: Text('Device 01', style: style),
                        ),
                        Padding(
                          padding: padding,
                          child: Text(
                            '15%',
                            textAlign: TextAlign.end,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: padding,
                          child: Text(
                            'Date',
                            style: style,
                          ),
                        ),
                        Padding(
                          padding: padding,
                          child: Text('20 MAR 2020',
                              textAlign: TextAlign.end, style: tStyle),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: padding,
                          child: Text(
                            'Time',
                            style: style,
                          ),
                        ),
                        Padding(
                          padding: padding,
                          child:
                          Text('20:15:53', textAlign: TextAlign.end, style: tStyle),
                        ),
                      ]),

                    ],
                  ),
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.065,
                  // width: MediaQuery.of(context).size.width * 0.05,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:28.0),
                    child: ContinueButton('Continue', '/pending'),
                  )),
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
                          "Re-Check",
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
