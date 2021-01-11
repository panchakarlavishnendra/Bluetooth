import 'package:flutter/material.dart';

import '../const.dart';

class LoadBags extends StatefulWidget {
  @override
  _LoadBagsState createState() => _LoadBagsState();
}

class _LoadBagsState extends State<LoadBags> {
  List<String> _locations = ['A', 'B', 'C', 'D'];
  String _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Loading and Unstacking-Mother Bag's",
          style: TextStyle(fontSize: 17),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
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
                    )
                  ],
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 30),
            elevation: 1,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.8,
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
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
          )
        ],
      ),
    );
  }
}
