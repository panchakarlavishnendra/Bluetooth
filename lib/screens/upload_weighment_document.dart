/// Flutter code sample for DataTable
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bluetooth/widgets/continue_button.dart';
import 'package:get/get.dart';

class UploadWeighmentDocumentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UploadWeighmentDocumentScreenState();
  }
}

class _UploadWeighmentDocumentScreenState
    extends State<UploadWeighmentDocumentScreen> {
  static const int numItems = 10;
  int index = 3;
  List<bool> selected = List<bool>.generate(numItems, (index) => false);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text('OutWard Truck Weighment',style: TextStyle(fontSize: 16),)),
      body: Card(
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
                    width: MediaQuery.of(context).size.width * 0.98,
                    color: Colors.grey[200],
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(38.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.photo_size_select_actual_outlined,
                              size: 70,
                            ),
                          ),
                        ),
                        Text("Tap here to upload the document"),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        // side: BorderSide(color: Colors.red)
                      ),
                      color: Colors.white,
                      textColor: Colors.deepOrange,
                      padding: EdgeInsets.all(5.0),
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
                      padding: EdgeInsets.all(5.0),
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
              ),
              ContinueButton('Continue to QC', '/quality'),
            ],
          ),
        ),
      ),
    );
  }
}
