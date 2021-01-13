import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
// import 'package:group_radio_button/group_radio_button.dart';
import 'package:get/get.dart';

class DelieveryOrders extends StatefulWidget {
  DelieveryOrders({Key key}) : super(key: key);

  @override
  _DelieveryOrders createState() => new _DelieveryOrders();
}

class _DelieveryOrders extends State<DelieveryOrders> {
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
    var style = TextStyle(fontSize: 17,fontWeight: FontWeight.bold);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text('Delevery Options')),
      body:ListView(
        children: <Widget>[
          Container(

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0,vertical: 15),
              child: TextField(
//             controller: editingController,
                decoration: InputDecoration(
                  hintText: 'Search',

                  // enabledBorder: OutlineInputBorder(
                  // // borderSide: BorderSide(color: Colors.black,),
                  // ),
                  // borderSide: ,
                  // labelText: "Search",
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
                                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                                    child: Text('Kamesh Cotton Ltd',style: TextStyle(color: Colors.white),),
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
                                      children:[Text('Contract',style: style)]
                                    ),
                                    Column(children:[Text(':')]),
                                    Column(children:[Text('john doe')]),
                                  ]),
                                  
                                  TableRow( children: [
                                    Column(children:[Text('Commodity',style: style)]),
                                    Column(children:[Text(':')]),
                                    Column(children:[Text("paddy")]),
                                  ]),
                                  TableRow( children: [
                                    Column(children:[Text('Date',style: style,)]),
                                    Column(children:[Text(':')]),
                                    Column(children:[Text('20-01-2020')]),
                                  ]),
                                  TableRow( children: [
                                    Column(children:[Text('Toatal Trucks',style: style,)]),
                                    Column(children:[Text(':')]),
                                    Column(children:[Text('5')]),
                                  ]),
                                  TableRow( children: [
                                    Column(children:[Text('Total Weights',style: style,)]),
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

      endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
      // Disable opening the end drawer with a swipe gesture.
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
