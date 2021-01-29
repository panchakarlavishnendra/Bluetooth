import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:get/get.dart';

class DailyVehicleTransaction extends StatefulWidget {
  @override
  _DailyVehicleTransactionState createState() =>
      _DailyVehicleTransactionState();
}

class _DailyVehicleTransactionState extends State<DailyVehicleTransaction> {
  @override
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  Widget build(BuildContext context) {
    var tStyle = TextStyle(fontSize: 14.5);
    var style = TextStyle(
      fontSize: 15.5,
      color: Colors.grey,
    );
    var padding = const EdgeInsets.all(3.0);
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 1.5,
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              // color: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Table(
                // border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text('Truck Id', style: style),
                    ),
                    Padding(
                      padding: padding,
                      child: Text(
                        '632',
                        textAlign: TextAlign.end,
                        style: tStyle,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'Vehicle Number',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child: Text('AP-08-ST-2213',
                          textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'CDF/CAD No.',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child:
                          Text('XXX', textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'TXN.Type',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child: Text('Inward',
                          textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'Status',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child: Text('QC Approval with override',
                          textAlign: TextAlign.end,
                          style: TextStyle(fontSize: 12)),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'Time',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child: Text('15:30:56:66',
                          textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'Latitude',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child: Text('27.2046',
                          textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'Longitude',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child: Text('27.2046',
                          textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'No. of Bags',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child: Text('5', textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'Bag Type',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child: Text('Medium',
                          textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'Truck Gross Weight',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child: Text('50.00 MT',
                          textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'Truck Tare Weight',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child: Text('550.00 MT',
                          textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'Truck Net  Weight',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child: Text('50.00 MT',
                          textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'Moisture',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child:
                          Text('15%', textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: padding,
                      child: Text(
                        'Damaged',
                        style: style,
                      ),
                    ),
                    Padding(
                      padding: padding,
                      child:
                          Text('10%', textAlign: TextAlign.end, style: tStyle),
                    ),
                  ]),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
              onPressed: () => {Get.back()},
              color: Colors.cyan[900],
              textColor: Colors.white,
              child: Text('Done', style: TextStyle(fontSize: 14)),
            ),
          )
        ],
      ),
      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
    );
  }
}
