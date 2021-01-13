/// Flutter code sample for DataTable
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';



class UploadWeighmentDocumentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UploadWeighmentDocumentScreenState();
  }
}

class _UploadWeighmentDocumentScreenState extends State<UploadWeighmentDocumentScreen> {
  static const int numItems = 10;
  int index = 3;
  List<bool> selected = List<bool>.generate(numItems, (index) => false);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,
      appBar: AppBar(title: Text('OutWard Truck Weighment')),
      body:Card(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: <Widget>[
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("Upload Weighment Document"),
                ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width*0.98,
                    color: Colors.grey[200],
                    child:  Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(38.0),
                            child: IconButton(
                              icon: Icon(Icons.photo_size_select_actual_outlined,size: 70,),

                              // onPressed: () {
                              //   setState(() {
                              //     _volume += 10;
                              //   });
                              // },
                            ),
                          ),
                          Text("Tap here to upload the document"),

                        ],
                    ),

                ),
    ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        // side: BorderSide(color: Colors.red)
                    ),
                    color: Colors.white,
                    textColor: Colors.deepOrange,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {},
                    child: Text(
                      "Delete Document".toUpperCase(),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        side: BorderSide(color: Colors.grey)),
                    color: Colors.white,
                    textColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      Get.toNamed('/success');
                    },
                    child: Text(
                      "View Document".toUpperCase(),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {
                  Get.toNamed('/quality');
                },
                color: Colors.cyan[900],
                child: Center(
                    child: Text(
                  "CONTINUE TO QC",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )),
              ),
            ],

          ),
        ),
      ),



    );

  }
}
// Padding(
// padding: EdgeInsets.all(10),
// child: RaisedButton(
// elevation: 5,
// textColor: Colors.white,
// color: Colors.teal[900],
// child: Text(
// "Continue Document Upload",
// style: TextStyle(fontSize: 15),
// ),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(1)),
// onPressed: () {
// Get.toNamed('/quality');
// },
// ),
// ),