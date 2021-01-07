import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/text_field.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_svg/avd.dart';
// import 'package:flutter_svg/flutter_svg.dart';

const List<String> assetNames = <String>['assets/bluetooth.svg'];

class QualityCheck extends StatefulWidget {
  @override
  _QualityCheckState createState() => _QualityCheckState();
}

class _QualityCheckState extends State<QualityCheck> {
  final _moistureController = TextEditingController(text: '15'); 
  final _damageController = TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    var style = TextStyle(fontWeight: FontWeight.bold,fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: Text('Quality Check'),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 15.0),
                child: Icon(
                  Icons.home,
                  size: 50,
                ),
              ),
              Text('Address',style: TextStyle(fontSize: 15),)
            ],
          ),
          Text('Assayer'),
          Text('Loremepsum'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Divider(height: 20,color: Colors.black,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:35.0,vertical: 18),
                child: Text('QC Parameter',style: style),
              ),
              Text('Value',style: style,)
            ],
            ),
  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(height: 2,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Moisture',style: TextStyle(fontSize: 22),),
                GestureDetector(child: Icon(Icons.bluetooth,size:30,),onTap: (){},),
                GestureDetector(child: Icon(Icons.mail,size:30,),onTap: (){},),
                Container(
                  width:30,
                  height: 30,
                  color: Colors.green,
                  child: TextField(
                    controller: _moistureController,
                    
                    keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                      decoration: new InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                         // borderRadius:
                          borderSide:BorderSide(
                            color: Colors.green
                          )
                        ),
                            focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),),
                        ),
                    ) ,
                ),
                RaisedButton(
                    child:Text('Manual Entry'),
                    onPressed:(){},

                )
              ],
            ),
          ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(height: 0.5,color: Colors.black,),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 20),
                child: Text('Damaged',style: TextStyle(fontSize: 22),),
              ),
              Container(
                height: 30,
                width: 30,
                child: TextFormField(
                  controller: _damageController,
                   keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                      decoration: new InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                         // borderRadius:
                          // borderSide:BorderSide(
                          //   color: Colors.green
                          // )
                        ),
                            focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),),
                        ),
                ),
              )
            ],
          ),
                      Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(height: 0.5,color: Colors.black,),
          ),
          Row(children: 
          [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
              child: Text('last updated on '),
            )
          ],),
          SizedBox(height: 150,),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            // color: Colors.blueAccent,
            child: RaisedButton(
              color:  Colors.teal,
              onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:15.0),
                child: Text('Validate Quality',style: TextStyle(fontSize: 18,color: Colors.white),),
              ),
              ),
          ),
          SizedBox(height: 15,),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            child: RaisedButton(
              onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:15.0),
                child: Text('Reset'),
              ),
              ),
          ),
        ],
      ),
    );
  }
}