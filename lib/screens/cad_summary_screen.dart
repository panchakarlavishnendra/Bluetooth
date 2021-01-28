import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/screens/truck_stacking_summary.dart';
import 'package:get/get.dart';

class CadSummary extends StatefulWidget {
  @override
  _CadSummaryState createState() => _CadSummaryState();
}

const String title = 'CAD Summary';

class _CadSummaryState extends State<CadSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 1,
          child: DataTable(
            dividerThickness: 0,
            columnSpacing: 14,
            dataRowHeight: 42,
            headingRowHeight: 45,
            columns: [
              DataColumn(
                  label: Text(
                'Property',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:
                        AdaptiveTextSize().getadaptiveTextSize(context, 16)),
              )),
              // DataColumn(
              //     label: Text(
              //       'Mother Bags',
              //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              //     )),
              DataColumn(
                  label: Text(
                'Value',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
            ],
            rows: [
              DataRow(
                color: MaterialStateProperty.resolveWith(
                    (states) => Colors.grey[200]),
                cells: [
                  DataCell(Text('CDF Type')),
                  DataCell(Text('Fresh')),
                ],
              ),
              DataRow(
                // color: MaterialStateProperty.resolveWith((states) =>  Colors.grey[200]),
                cells: [
                  DataCell(Text('CDF Date')),
                  DataCell(Text('12/4/2009')),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.resolveWith(
                    (states) => Colors.grey[200]),
                cells: [
                  DataCell(Text('CDF Number')),
                  DataCell(Text('85448')),
                ],
              ),
              DataRow(
                // color: MaterialStateProperty.resolveWith((states) =>  Colors.grey[200]),
                cells: [
                  DataCell(Text('Status')),
                  DataCell(Text('Ok')),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.resolveWith(
                    (states) => Colors.grey[200]),
                cells: [
                  DataCell(Text('Businsess Type')),
                  DataCell(Text('private')),
                ],
              ),
              DataRow(
                // color: MaterialStateProperty.resolveWith((states) =>  Colors.grey[200]),
                cells: [
                  DataCell(Text('Contract')),
                  DataCell(Text('yes')),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.resolveWith(
                    (states) => Colors.grey[200]),
                cells: [
                  DataCell(Text('Ware House location')),
                  DataCell(Text('location A')),
                ],
              ),
              DataRow(
                // color: MaterialStateProperty.resolveWith((states) =>  Colors.grey[200]),
                cells: [
                  DataCell(Text('Commodities')),
                  DataCell(Text('paddy')),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.resolveWith(
                    (states) => Colors.grey[200]),
                cells: [
                  DataCell(Text('No of Trucks')),
                  DataCell(Text('24')),
                ],
              ),
              DataRow(
                // color: MaterialStateProperty.resolveWith((states) =>  Colors.grey[200]),
                cells: [
                  DataCell(Text('Total Mother Bags')),
                  DataCell(Text('2000')),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.resolveWith(
                    (states) => Colors.grey[200]),
                cells: [
                  DataCell(Text('Total MadeUp Bags')),
                  DataCell(Text('2001')),
                ],
              ),
              DataRow(
                // color: MaterialStateProperty.resolveWith((states) =>  Colors.grey[200]),
                cells: [
                  DataCell(Text('Total Net Commodities Wt.(MT)')),
                  DataCell(Text('20kg')),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.resolveWith(
                    (states) => Colors.grey[200]),
                cells: [
                  DataCell(Text('Weigh Bridge')),
                  DataCell(Text('2')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Quality Lab')),
                  DataCell(Text('assaygr')),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.resolveWith(
                    (states) => Colors.grey[200]),
                cells: [
                  DataCell(Text('assaygr')),
                  // DataCell(Text('1992')),
                  DataCell(Text('2009')),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: Colors.green[700],
          child: DataTable(columns: [
            DataColumn(
                label: Text(
              'QC',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            )),
            DataColumn(label: Text(''))
          ], rows: [
            DataRow(
              color: MaterialStateProperty.resolveWith(
                  (states) => Colors.grey[200]),
              cells: [
                DataCell(Text('Damaged %')),
                DataCell(Text('23 %')),
                // DataCell(Text('2009')),
              ],
            ),
            DataRow(
              color:
                  MaterialStateProperty.resolveWith((states) => Colors.white),
              cells: [
                DataCell(Text('Moisture %')),
                DataCell(Text('54 %')),
                // DataCell(Text('2009')),
              ],
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
              onPressed: () => {Get.toNamed('/')},
              color: Colors.green[700],
              textColor: Colors.white,
              child:
                  const Text(' Download CAD ', style: TextStyle(fontSize: 14)),
            ),
          ),
        )
      ]),
    );
  }
}
