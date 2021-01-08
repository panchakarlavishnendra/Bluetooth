import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sucess extends StatefulWidget {
  @override
  _SucessState createState() => _SucessState();
}

Widget _customisedButton(context, text) {
  var style = TextStyle(color: Colors.white, fontSize: 17);
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 7.0),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.06,
      child: RaisedButton(
        child: Text(
          '$text',
          style: style,
        ),
        onPressed: () {},
        color: Colors.cyan[800],
      ),
    ),
  );
}

class _SucessState extends State<Sucess> {
  @override
  var style = TextStyle(
    fontSize: 32,
  );

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Image.asset('assets/tick.png')),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        'Gate Pass Generated Successfully',
                        style: style,
                        textAlign: TextAlign.center,
                      )),
                ),
                _customisedButton(context, 'Download Gatepass'),
                _customisedButton(context, 'Daily Transaction Register'),
                _customisedButton(context, 'All Delivery Orders'),
                _customisedButton(context, 'Make a New Truck Entry')
              ],
            ),
          ),
        ));
  }
}
