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
            height: 150,
            color: Colors.white,
            child: TimelineTile(
              alignment: TimelineAlign.center,
              isFirst: true,
              lineXY: 0.7,
              hasIndicator: true,
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.green,
                // indicatorXY: 0.5,

                padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              endChild: Container(
                  height: 400,
                  color: Colors.red,
                  child: Padding(
                    // padding: const EdgeInsets.only(top: 116.0),
                    padding: const EdgeInsets.only(top: 6.0),

                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Manual Weighment (Gross)"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Weight Entered :515.00 MIN"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _CustomButton(),
                        )
                        //       Container(
                        //           height: 25,
                        //           width: 160,
                        //           child:
                        //           RaisedButton(
                        //   child: Text('enter otp to validate'),
                        //   onPressed: () {},
                        // )),
                      ],
                    ),
                  )),
              startChild: Container(
                color: Colors.blue,
                child: Padding(
                  // padding: const EdgeInsets.only(left: 108.0, top: 131),
                  padding: const EdgeInsets.only(left: 8.0, top: 1),

                  child: Column(
                    children: <Widget>[
                      Text("26/8/2021"),
                      Text("26/8/2021"),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   height: 280,
          //   color: Colors.white,
          //   child: TimelineTile(
          //     alignment: TimelineAlign.center,
          //     // isFirst: true,
          //     lineXY: 0.7,
          //     hasIndicator: true,
          //     indicatorStyle: IndicatorStyle(
          //       width: 25,
          //       color: Colors.green,
          //       // indicatorXY: 0.5,
          //       drawGap: true,
          //       padding: const EdgeInsets.only( left: 8, right: 8),
          //       iconStyle: IconStyle(
          //         color: Colors.white,
          //         iconData: Icons.radio_button_checked_rounded,
          //       ),
          //     ),
          //     endChild: Container(
          //         height: 400,
          //         child: Padding(
          //           padding: const EdgeInsets.only(top: 116.0),
          //           child: Column(
          //             children: <Widget>[
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Text("Manual Weighment (Gross)"),
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Text("Weight Entered :515.00 MIN"),
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: _CustomButton(),
          //               )
          //               //       Container(
          //               //           height: 25,
          //               //           width: 160,
          //               //           child:
          //               //           RaisedButton(
          //               //   child: Text('enter otp to validate'),
          //               //   onPressed: () {},
          //               // )),
          //             ],
          //           ),
          //         )),
          //     startChild: Padding(
          //       padding: const EdgeInsets.only(left: 108.0, top: 131),
          //       child: Column(
          //         children: <Widget>[
          //           Text("26/8/2021"),
          //           Text("26/8/2021"),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Container(
          //   height: 280,
          //   color: Colors.white,
          //   child: TimelineTile(
          //     alignment: TimelineAlign.center,
          //     // isFirst: true,
          //     lineXY: 0.7,
          //     hasIndicator: true,
          //     indicatorStyle: IndicatorStyle(
          //       width: 25,
          //       color: Colors.green,
          //       // indicatorXY: 0.5,
          //       drawGap: true,
          //       padding: const EdgeInsets.only( left: 8, right: 8),
          //       iconStyle: IconStyle(
          //         color: Colors.white,
          //         iconData: Icons.radio_button_checked_rounded,
          //       ),
          //     ),
          //     endChild: Container(
          //         height: 400,
          //         child: Padding(
          //           padding: const EdgeInsets.only(top: 116.0),
          //           child: Column(
          //             children: <Widget>[
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Text("Manual Weighment (Gross)"),
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Text("Weight Entered :515.00 MIN"),
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: _CustomButton(),
          //               )
          //               //       Container(
          //               //           height: 25,
          //               //           width: 160,
          //               //           child:
          //               //           RaisedButton(
          //               //   child: Text('enter otp to validate'),
          //               //   onPressed: () {},
          //               // )),
          //             ],
          //           ),
          //         )),
          //     startChild: Padding(
          //       padding: const EdgeInsets.only(left: 108.0, top: 131),
          //       child: Column(
          //         children: <Widget>[
          //           Text("26/8/2021"),
          //           Text("26/8/2021"),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            height: 180,
            color: Colors.blueGrey,
            child: TimelineTile(
              alignment: TimelineAlign.center,
              // isFirst: true,
              isLast: true,
              lineXY: 0.7,
              hasIndicator: true,
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.green,
                // indicatorXY: 0.5,
                drawGap: true,
                padding: const EdgeInsets.only( left: 8, right: 8),
                iconStyle: IconStyle(
                  color: Colors.white,
                  iconData: Icons.radio_button_checked_rounded,
                ),
              ),
              endChild: Container(
                // height: 400,
                  child: Padding(
                    // padding: const EdgeInsets.only(top: 116.0),
                    padding: const EdgeInsets.only(top: 6.0),

                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Manual Weighment (Gross)"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Weight Entered :515.00 MIN"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _CustomButton(),
                        )
                        //       Container(
                        //           height: 25,
                        //           width: 160,
                        //           child:
                        //           RaisedButton(
                        //   child: Text('enter otp to validate'),
                        //   onPressed: () {},
                        // )),
                      ],
                    ),
                  )),
              startChild: Container(
                color: Colors.pink,
                child: Padding(
                  // padding: const EdgeInsets.only(left: 108.0, top: 131),
                  padding: const EdgeInsets.only(left: 108),
                  child: Column(
                    children: <Widget>[
                      Text("26/8/2021"),
                      Text("26/8/2021"),
                    ],
                  ),
                ),
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
