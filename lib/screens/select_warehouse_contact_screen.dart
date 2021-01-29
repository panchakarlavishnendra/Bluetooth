import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/continue_button.dart';
import 'package:flutter_bluetooth/widgets/drop_down.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:get/get.dart';

class SelectWarehouseContacts extends StatefulWidget {
  SelectWarehouseContacts({Key key}) : super(key: key);
  @override
  _SelectWarehouseContacts createState() => new _SelectWarehouseContacts();
}

class _SelectWarehouseContacts extends State<SelectWarehouseContacts> {
  List<String> _locations = ['A', 'B', 'C', 'D'];
  List<String> _locations2 = ['loc', 'Boc', 'C', 'D'];
  List<String> _locations3 = ['locA', 'BocK', 'C', 'D'];
  String _selectedLocation;
  String _selectedLocation2;
  String _selectedLocation3;

  // var _value;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  routeMethod(url) {
    Get.toNamed(url);
  }

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          title: Text(
        'Select Warehouse & Contract',
        style: TextStyle(fontSize: 16),
      )),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: mediaHeight * 0.6,
              width: mediaWidth * 1,
              child: ListView(children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      height: mediaHeight * 0.090,
                      width: mediaWidth * 0.85,
                      child: CustomDropDown(
                          _selectedLocation, _locations, 'Select Warehouse')),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      height: mediaHeight * 0.090,
                      width: mediaWidth * 0.85,
                      child: CustomDropDown(_selectedLocation2, _locations2,
                          'Select Contract')),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      height: mediaHeight * 0.090,
                      width: mediaWidth * 0.85,
                      child: CustomDropDown(_selectedLocation3, _locations3,
                          'Select Weigh Bridge')),
                ),
              ]),
            ),
            // ContinueButton(routeMethod('/selectWareHouse'),),
            Container(
              height: mediaHeight * 0.07,
              width: mediaWidth * 0.85,
              child: ContinueButton('Continue', '/selectWareHouse'),
            )
          ]),

      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
