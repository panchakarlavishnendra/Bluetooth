/// Flutter code sample for DataTable
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bluetooth/widgets/app_widget.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:get/get.dart';


class TruckStackingSummary extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TruckStackingSummaryState();
  }
}

class _TruckStackingSummaryState extends State<TruckStackingSummary> {
  static const int numItems = 10;
  int index = 3;
  List<bool> selected = List<bool>.generate(numItems, (index) => false);
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
        title: Text('Truck Stacking Summary'),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          CustomWidget(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: DataTable(
                columnSpacing: 14,
                dataRowHeight: 42,
                headingRowHeight: 35,
                columns: [
                  DataColumn(
                      label: Text(
                    'Warehouse Stack',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AdaptiveTextSize()
                            .getadaptiveTextSize(context, 12)),
                  )),
                  DataColumn(
                      label: Text(
                    'Mother Bags',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )),
                  DataColumn(
                      label: Text(
                    'Mother Bags',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )),
                ],
              rows: [

                DataRow(

                 color: MaterialStateProperty.resolveWith((states) =>  Colors.grey[200]),
                  cells: [
                    DataCell(
                        Text('Go')),
                    DataCell(Text('2009')),
                    DataCell(Text('2009')),

                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Dart')),
                    DataCell(Text('2018')),
                    DataCell(Text('2009')),

                  ],
                ),
                DataRow(
                  color: MaterialStateProperty.resolveWith((states) =>  Colors.grey[200]),

                  cells: [
                    DataCell(Text('Java')),
                      DataCell(Text('1992')),
                      DataCell(Text('2009')),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              // color: Colors.blueAccent,
              child: RaisedButton(
                color: Colors.teal,
                onPressed: () {
                  Get.toNamed('/truckweightment');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'Continue Tare Weightment',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
    );
  }
}

class AdaptiveTextSize {
  const AdaptiveTextSize();

  getadaptiveTextSize(BuildContext context, dynamic value) {
    // 720 is medium screen height
    return (value / 720) * MediaQuery.of(context).size.height;
  }
}