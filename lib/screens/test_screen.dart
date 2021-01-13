/// Flutter code sample for Scaffold.endDrawer

// To disable the drawer edge swipe, set the
// [Scaffold.endDrawerEnableOpenDragGesture] to false. Then, use
// [ScaffoldState.openEndDrawer] to open the drawer and [Navigator.pop] to
// close it.

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:timeline_tile/timeline_tile.dart';

/// This is the stateful widget that the main application instantiates.
class TestScreen extends StatefulWidget {
  TestScreen({Key key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _TestScreenState extends State<TestScreen> {
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
      appBar: AppBar(title: Text('Drawer Demo')),
      body: ListView(
        children: <Widget>[
          Container(
            height: 220,
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
                drawGap: true,
                padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              startChild: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('26/8/2021'),
                  Text("26/8/2021"),
                ],
              ),
              endChild: Container(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Column(
                      children: <Widget>[
                        Text("Manual Weighment (Gross)"),
                        Text("Weight Entered :515.00 MIN"),
                        _CustomButton()
                      ],
                    ),
                  )),
            ),
          ),
          Container(
            height: 120,
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.25,
              hasIndicator: true,
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.green,
                // indicatorXY: 0.5,
                drawGap: true,
                padding: const EdgeInsets.only(left: 8, right: 8),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              endChild: Column(
                children: [
                  Container(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text("02/01/2021"),
                      )),
                  _CustomButton()
                ],
              ),
              startChild: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('26/8/2021'),
                  Text("26/8/2021"),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.25,
              hasIndicator: true,
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.green,
                // indicatorXY: 0.5,
                drawGap: true,
                padding: const EdgeInsets.only(left: 8, right: 8),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              startChild: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('26/8/2021'),
                  Text("26/8/2021"),
                ],
              ),
              endChild: Column(
                children: [
                  Container(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text("02/01/2021"),
                      )),
                  _CustomButton()
                ],
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
      height: 35,
      width: 180,
      child: FlatButton(
        color: Colors.white,
        child: Text(
          'Enter otp to validate',
          style: TextStyle(color: Colors.green),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(color: Colors.green)),
      ),
    );
  }
}
