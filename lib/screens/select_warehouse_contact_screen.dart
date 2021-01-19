import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/continue_button.dart';
import 'package:flutter_bluetooth/widgets/drop_down.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
// import 'package:group_radio_button/group_radio_button.dart';
import 'package:auto_size_text/auto_size_text.dart';
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
    final screenHeight = mediaHeight / 100;
    final screenWidth = mediaWidth / 100;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text('Drawer Demo')),
      body: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: Column(
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
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  onPressed: () => {Get.toNamed('/selectWareHouse')},
                  color: Colors.cyan[900],
                  textColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 13.0, bottom: 10.0, left: 100, right: 100),
                    child: AutoSizeText("Continue",
                        style: TextStyle(fontSize: 18)),
                  ),
                ),
              )
            ]),
      ),

      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
