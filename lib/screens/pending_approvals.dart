/// Flutter code sample for Scaffold.endDrawer
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/app_widget.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:get/get.dart';
import 'package:timeline_tile/timeline_tile.dart';

/// This is the stateful widget that the main application instantiates.
class PendingApprovals extends StatefulWidget {
  PendingApprovals({Key key}) : super(key: key);

  @override
  _PendingApprovalsState createState() => _PendingApprovalsState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PendingApprovalsState extends State<PendingApprovals> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
        title: Text('Drawer Demo'),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          CustomWidget(),
          Container(
            height: 145,
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              isFirst: true,
              lineXY: 0.25,
              hasIndicator: true,
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.green,
                // indicatorXY: 0.5,
                padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              endChild: Container(
                child: Padding(
                  // padding: const EdgeInsets.only(top: 116.0),
                  padding: const EdgeInsets.only(top: 56.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Manual Weighment (Gross)"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Weight Entered :515.00 MIN"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: _CustomButton(),
                      )
                    ],
                  ),
                ),
              ),
              startChild: Padding(
                // padding: const EdgeInsets.only(left: 108.0, top: 131),
                padding: const EdgeInsets.only(left: 3.0, top: 60),

                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text("26/8/2021",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "4:50pm",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 145,
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              // isFirst: true,
              lineXY: 0.25,
              hasIndicator: true,
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.green,
                // indicatorXY: 0.5,
                padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              endChild: Container(
                child: Padding(
                  // padding: const EdgeInsets.only(top: 116.0),
                  padding: const EdgeInsets.only(top: 56.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Manual Weighment (Gross)"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Weight Entered :515.00 MIN"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: _CustomButton(),
                      )

                      // )),
                    ],
                  ),
                ),
              ),
              startChild: Padding(
                // padding: const EdgeInsets.only(left: 108.0, top: 131),
                padding: const EdgeInsets.only(left: 3.0, top: 60),

                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text("26/8/2021",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "4:50pm",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 145,
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              // isLast: true,
              lineXY: 0.25,
              hasIndicator: true,
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.green,
                // indicatorXY: 0.5,
                padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              endChild: Container(
                child: Padding(
                  // padding: const EdgeInsets.only(top: 116.0),
                  padding: const EdgeInsets.only(top: 56.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Manual Weighment (Gross)"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Weight Entered :515.00 MIN"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: _CustomButton(),
                      )
                    ],
                  ),
                ),
              ),
              startChild: Padding(
                // padding: const EdgeInsets.only(left: 108.0, top: 131),
                padding: const EdgeInsets.only(left: 3.0, top: 60),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text("26/8/2021",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "4:50pm",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 145,
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              isLast: true,
              lineXY: 0.25,
              hasIndicator: true,
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.green,
                // indicatorXY: 0.5,
                padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              endChild: Container(
                child: Padding(
                  // padding: const EdgeInsets.only(top: 116.0),
                  padding: const EdgeInsets.only(top: 56.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Manual Weighment (Gross)"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Weight Entered :515.00 MIN"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: _CustomButton(),
                      )
                    ],
                  ),
                ),
              ),
              startChild: Padding(
                // padding: const EdgeInsets.only(left: 108.0, top: 131),
                padding: const EdgeInsets.only(left: 3.0, top: 60),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text("26/8/2021",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "4:50pm",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.85,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0),
                ),
                onPressed: () => {Get.toNamed('/success')},
                color: Colors.cyan[900],
                textColor: Colors.white,
                child: Text("Continue", style: TextStyle(fontSize: 18)),
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
          Get.toNamed('/otpscreen');
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
