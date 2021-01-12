import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/drop_down.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
// import 'package:group_radio_button/group_radio_button.dart';
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

  var _value;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Column(children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 1,
              child: ListView(children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.85,
                      child: CustomDropDown(
                          _selectedLocation, _locations, 'Select Warehouse')),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.85,
                      child: CustomDropDown(
                          _selectedLocation2, _locations2, 'Select Contract')),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.85,
                      child: CustomDropDown(_selectedLocation3, _locations3,
                          'Select Weigh Bridge')),
                ),
                SizedBox(height: 30),
              ]),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
              onPressed: () {
                Get.toNamed('/selectWareHouse');
              },
              color: Colors.cyan[900],
              textColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 100, right: 100, top: 18, bottom: 18),
                child: Text("Continue".toUpperCase(),
                    style: TextStyle(fontSize: 14)),
              ),
            )
          ]),
        ),
      ),

      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
