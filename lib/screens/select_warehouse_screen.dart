import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/continue_button.dart';
import 'package:flutter_bluetooth/widgets/drop_down.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter_svg/svg.dart';

class SelectWareHouse extends StatefulWidget {
  SelectWareHouse({Key key}) : super(key: key);
  @override
  _SelectWareHouse createState() => new _SelectWareHouse();
}

class _SelectWareHouse extends State<SelectWareHouse> {
  List<String> _locations = ['A', 'B', 'C', 'D'];
  List<String> _locations2 = ['AA', 'BB', 'CC', 'DD'];
  List<String> _locations3 = ['AAA', 'BBB', 'CCC', 'DDD'];

  String _selectedLocation;
  String _selectedLocation2;

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
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          title: const AutoSizeText(
        'Select Warehouse & Contact',
        style: TextStyle(fontSize: 14),
      )),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: mediaHeight * 0.75,
              width: mediaWidth * 1,
              child: ListView(children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: mediaHeight * 0.090,
                    width: mediaWidth * 0.85,
                    child: DropdownButton(
                      hint: Text('Select Warehouse'),
                      // Not necessary for Option 1
                      value: _selectedLocation,
                      isExpanded: true,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLocation = newValue;
                        });
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: mediaHeight * 0.090,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: CustomDropDown(
                      _selectedLocation,
                      _locations,
                      'Select Contract',
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 20),
                //   child: Container(
                //     height: mediaHeight * 0.090,
                //     width: MediaQuery.of(context).size.width * 0.85,
                //     child: CustomDropDown(
                //         _selectedLocation2, _locations2, 'Select Weigh Bridge'),
                //   ),
                // ),
                SizedBox(height: 30),
                Container(
                  child: Card(
                    elevation: 1,
                    child: Row(
                      children: [
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                "assets/icons/storage.svg",
                                height: 25,
                                width: 25,
                              ),
                            ),
                            Text('Addres'),
                            Radio(
                              value: 0,
                              groupValue: _value,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    child: Row(
                      children: [
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                "assets/icons/contract.svg",
                                height: 25,
                                width: 25,
                              ),
                            ),
                            Text('Addres'),
                            Radio(
                              value: 1,
                              groupValue: _value,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Container(
              height: mediaHeight * 0.07,
              width: mediaWidth * 0.85,
              child: ContinueButton('Continue', '/contactsummary'),
            )
          ]),

      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
