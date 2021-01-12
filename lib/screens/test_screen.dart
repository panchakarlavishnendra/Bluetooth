/// Flutter code sample for Scaffold.endDrawer

// To disable the drawer edge swipe, set the
// [Scaffold.endDrawerEnableOpenDragGesture] to false. Then, use
// [ScaffoldState.openEndDrawer] to open the drawer and [Navigator.pop] to
// close it.

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/drop_down.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';

/// This is the stateful widget that the main application instantiates.
class TestScreen extends StatefulWidget {
  TestScreen({Key key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _TestScreenState extends State<TestScreen> {
  var _selectedLocation;
  var _selectedLocation2;
  List<String> _locations = ['A', 'B', 'C', 'D'];
  List<String> _locations2 = ['loc', 'kia', 'C', 'D'];

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
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _openEndDrawer,
              child: Text('Open End Drawer'),
            ),
          ),
          Center(
            child:
                CustomDropDown(_selectedLocation, _locations, 'choose a loc'),
          ),
          Center(
            child: CustomDropDown(
                _selectedLocation2, _locations2, 'choose a land'),
          )
        ],
      ),
      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
