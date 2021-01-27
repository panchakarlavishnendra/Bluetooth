import 'package:flutter/material.dart';

class DailyVehicleTransaction extends StatefulWidget {
  @override
  _DailyVehicleTransactionState createState() =>
      _DailyVehicleTransactionState();
}

class _DailyVehicleTransactionState extends State<DailyVehicleTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Container(

            width: MediaQuery.of(context).size.width*1,
            // color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal:20.0),
            child: Table(
              // border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(children: [
                  Text('Cell 1'),
                  Text('Cell 2',textAlign: TextAlign.end),
                ]),
                TableRow(children: [
                  Text('Cell 4',),
                  Text('Cell 5',textAlign: TextAlign.end),
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
