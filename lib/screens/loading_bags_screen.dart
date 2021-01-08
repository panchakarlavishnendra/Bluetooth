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
                    Text(
                      'Vehicle',
                      style: style,
                    ),
                    Text(
                      'Quantity',
                      style: style,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text(''), Text('')],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
