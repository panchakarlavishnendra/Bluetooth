/// Flutter code sample for DataTable
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class TruckStackingSummary extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<TruckStackingSummary> {
  static const int numItems = 10;
  int index = 3;
  List<bool> selected = List<bool>.generate(numItems, (index) => false);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,
      appBar: AppBar(title: Text('Truck Stacking Summary')),
      body:
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          child:
          DataTable(
            columnSpacing: 14,
            dataRowHeight: 42,
            headingRowHeight: 35,


            columns: [
              DataColumn(label: Text('Warehouse Stack', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14),)),
              DataColumn(label: Text('Mother Bags',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14),)),
              DataColumn(label: Text('Mother Bags',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14),)),

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

    );
  }
}
