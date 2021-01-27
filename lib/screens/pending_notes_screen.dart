import 'dart:async';

/// Flutter code sample for Scaffold.endDrawer
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/app_widget.dart';
import 'package:flutter_bluetooth/widgets/otp_screen.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:flutter_bluetooth/widgets/vehicle_widget.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timeline_tile/timeline_tile.dart';

/// This is the stateful widget that the main application instantiates.
class PendingNotes extends StatefulWidget {
  PendingNotes({Key key}) : super(key: key);

  @override
  _PendingApprovalsState createState() => _PendingApprovalsState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PendingApprovalsState extends State<PendingNotes> {
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
        title: Text('Pending Approvals'),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          WeightWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Row(
              children: [
                IconButton(
                   icon: new Icon(Icons.notes),

                   // onPressed: (){},
                 ),
                Text("hi"),
              ],
            ),
          ),
      Container(
        margin: const EdgeInsets.only(left:35.0,right: 35,bottom: 35),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black87),
          borderRadius: BorderRadius.all(
              Radius.circular(10.0)),
        ),

          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLines: 8,
              decoration: InputDecoration.collapsed(hintText: "Enter your text here"),
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

}
