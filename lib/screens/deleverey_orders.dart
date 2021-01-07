import 'package:flutter/material.dart';
// import 'package:group_radio_button/group_radio_button.dart';
import 'package:get/get.dart';

class PendingApprovals extends StatefulWidget {
  PendingApprovals({Key key}) : super(key: key);
  @override
  _SelectWarehouseContacts createState() => new _SelectWarehouseContacts();
}

class _SelectWarehouseContacts extends State<PendingApprovals> {
  List<String> _locations = ['A', 'B', 'C', 'D'];
  String _selectedLocation;

  var _value;
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
      appBar: AppBar(title: Text('Delevery Options')),
      body:ListView(
        children: <Widget>[
          Container(

            child: Padding(
              padding: const EdgeInsets.only(left:28.0),
              child: TextField(
//             onChanged: (value) {
//               setState(() {
//                 filteredList.clear(); //for the next time that we search we want the list to be unfilterted
//                 filteredList.addAll(autoList); //getting list to original state
//
// //removing items that do not contain the entered Text
//                 filteredList.removeWhere((i) => i.contains(value.toString())==false);
//
// //following is just a bool parameter to keep track of lists
//                 searched=!searched;
//               });
//
//
//             },
//             controller: editingController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Search",
                  // prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
    Padding(
      padding: const EdgeInsets.only(left:18.0),
      child: Container(

          child:Card(
              child: Container(
              color: Colors.white,
                height: 250.0,
                width: double.infinity,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Container(
                            color: Colors.green,
                            height: 50.0,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(top:18.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left:18.0),
                                    child: Text('Kamesh Cotton Ltd'),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color:Colors.white,
                              child: Table(

                                children: [

                                  TableRow(

                                      children: [
                                    Column(),
                                    Column(),
                                    Column(children:[
                            //           RaisedButton(
                            //         textColor: Colors.white,
                            //         color: Colors.green,
                            //
                            //         child: Text('Enabled Button' ),
                            // ),
                                      FlatButton(
                                        child: Text('Flat Button', style: TextStyle(fontSize: 18.0),),
                                        color: Colors.blueAccent,
                                        textColor: Colors.white,
                                        onPressed: () {},
                                      ),
                        ]),
                                  ]),
                                  TableRow( children: [
                                    Column(

                                        children:[Text('Contract')]),
                                    Column(children:[Text(':')]),
                                    Column(children:[Text('john doe')]),
                                  ]),
                                  TableRow( children: [
                                    Column(children:[Text('Commodity')]),
                                    Column(children:[Text(':')]),
                                    Column(children:[Text("paddy")]),
                                  ]),
                                  TableRow( children: [
                                    Column(children:[Text('Date')]),
                                    Column(children:[Text(':')]),
                                    Column(children:[Text('20-01-2020')]),
                                  ]),TableRow( children: [
                                    Column(children:[Text('Toatal Trucks')]),
                                    Column(children:[Text(':')]),
                                    Column(children:[Text('5')]),
                                  ]),
                                  TableRow( children: [
                                    Column(children:[Text('Total Weights')]),
                                    Column(children:[Text(':')]),
                                    Column(children:[Text('5680MT')]),
                                  ]),TableRow( children: [
                                    Column(),
                                    Column(),
                                    Padding(
                                      padding: const EdgeInsets.only(top:18.0),
                                      child: Column(children:[Icon(
                                        Icons.car_rental,
                                        size: 30.0,
                                      ),]),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            ),
    ),

    ],
    ),

      endDrawer: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.black87.withOpacity(0.8)),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.55,
          child: Drawer(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 75,
                      ),
                      onTap: _closeEndDrawer,
                    ),
                    const Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ],
                ),
                Divider(
                  height: 8,
                  color: Colors.white70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        Icons.car_rental,
                        color: Colors.white,
                        size: 75,
                      ),
                      onTap: _closeEndDrawer,
                    ),
                    const Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 75,
                      ),
                      onTap: _closeEndDrawer,
                    ),
                    const Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 75,
                      ),
                      onTap: _closeEndDrawer,
                    ),
                    const Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 75,
                      ),
                      onTap: _closeEndDrawer,
                    ),
                    const Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 75,
                      ),
                      onTap: _closeEndDrawer,
                    ),
                    const Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
