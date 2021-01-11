import 'package:flutter/material.dart';

class LoadBags extends StatefulWidget {
  @override
  _LoadBagsState createState() => _LoadBagsState();
}

class _LoadBagsState extends State<LoadBags> {
  @override
  Widget build(BuildContext context) {
    var style = TextStyle(color: Colors.white);
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading and Unstacking-Mother Bag's"),
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'VEHICLE NO',
                          style: style,
                        ),
                        Text(
                          'Ap-06-PQ-2255',
                          style: style,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'QUANTITY',
                          style: style,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
