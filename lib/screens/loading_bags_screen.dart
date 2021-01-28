import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/continue_button.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:flutter_bluetooth/widgets/text_field.dart';
import 'package:get/get.dart';
import '../const.dart';
import 'package:flutter_svg/svg.dart';


class LoadBags extends StatefulWidget {
  @override
  _LoadBagsState createState() => _LoadBagsState();
}

class _LoadBagsState extends State<LoadBags> {
  List<String> _locations = ['A', 'B', 'C', 'D'];
  String _selectedLocation;
  final noOfBagsController = TextEditingController();
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
        title: Text(
          "Loading and Unstacking-Mother Bag's",
          style: TextStyle(fontSize: 13),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.green,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25.0, vertical: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text('VEHICLE NO',
                                              style: TextStyle(
                                                  color: colorWhite,
                                                  fontSize: 12)),
                                        ),
                                        Container(
                                          child: Text('Ap-06-PQ-2255',
                                              style: TextStyle(
                                                  color: colorWhite,
                                                  fontSize: 16,
                                                  fontWeight: fontBold)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text('QUANTITY',
                                              style: TextStyle(
                                                  color: colorWhite,
                                                  fontSize: 12)),
                                        ),
                                        Container(
                                          child: Text(
                                            '886',
                                            style: TextStyle(
                                                color: colorWhite,
                                                fontSize: 16,
                                                fontWeight: fontBold),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text('BAG TYPE',
                                              style: TextStyle(
                                                  color: colorWhite,
                                                  fontSize: 12)),
                                        ),
                                        Container(
                                          child: Text('MOTHER BAGS',
                                              style: TextStyle(
                                                  color: colorWhite,
                                                  fontSize: 16,
                                                  fontWeight: fontBold)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text('WEIGHT (KG)',
                                              style: TextStyle(
                                                  color: colorWhite,
                                                  fontSize: 12)),
                                        ),
                                        Container(
                                          child: Text(
                                            '50',
                                            style: TextStyle(
                                                color: colorWhite,
                                                fontSize: 16,
                                                fontWeight: fontBold),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  margin: EdgeInsets.only(left: 30,top: 20,bottom: 10),
                  elevation: 1,
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.34,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ListView(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10,right: 15,left:15),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.085,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: DropdownButton(
                                hint: Text('Warehouse Stack'),
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
                              padding: EdgeInsets.only(right: 15,left:15,bottom: 15),
                              // width: MediaQuery.of(context).size.width*0.80,
                              child: CustomTextField(
                                label: "No of Bag's",
                                controller: noOfBagsController,
                                keyboardType: TextInputType.number,
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 10,right: 15,left:15),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.085,
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: DropdownButton(
                                hint: Text('Warehouse Stack'),
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
                        ],
                      )
                      // child: ,
                      ),
                ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/icons/Group 179.svg",
                      ),
                    ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top:15,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "assets/icons/motherbag.svg",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text('Add Mother Bags'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: SvgPicture.asset(
                      "assets/icons/Add Stack.svg",
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context) .size.height* 0.07,
                width: MediaQuery.of(context) .size.width * 0.85,
                child: ContinueButton('Continue','/truckstacking')),

          ],
        ),
      ),
      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
    );
  }
}
