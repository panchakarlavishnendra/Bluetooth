import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';

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
    var style = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text('Delevery Options')),
      body: ListView(
        children: <Widget>[
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: TextField(
//             controller: editingController,
                decoration: InputDecoration(
                  hintText: 'Search',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              child: Card(
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.49,
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
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Text(
                                        'Kamesh Cotton Ltd',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Table(
                                    children: [
                                      TableRow(children: [
                                        Column(),
                                        Column(),
                                        Column(children: [
                                          FlatButton(
                                            child: Text(
                                              'In Process',
                                              style: TextStyle(fontSize: 14.0),
                                            ),
                                            color: Colors.deepPurpleAccent,
                                            textColor: Colors.white,
                                            onPressed: () {},
                                          ),
                                        ]),
                                      ]),
                                      TableRow(children: [
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0),
                                                child: Container(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Contract',
                                                      style: style,
                                                      textAlign:
                                                          TextAlign.start,
                                                    )),
                                              )
                                            ]),
                                        Column(children: [Text(':')]),
                                        Column(children: [
                                          Container(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'john doe',
                                              ))
                                        ]),
                                      ]),
                                      TableRow(children: [
                                        Column(children: [
                                          Container(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0),
                                                child: Text(
                                                  'Commodity',
                                                  style: style,
                                                  textAlign: TextAlign.start,
                                                ),
                                              ))
                                        ]),
                                        Column(children: [Text(':')]),
                                        Column(children: [
                                          Container(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "paddy",
                                              ))
                                        ]),
                                      ]),
                                      TableRow(children: [
                                        Column(children: [
                                          Container(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: Text(
                                                'Date',
                                                style: style,
                                              ),
                                            ),
                                          )
                                        ]),
                                        Column(children: [Text(':')]),
                                        Column(children: [
                                          Container(
                                              alignment: Alignment.topLeft,
                                              child: Text('20-01-2020'))
                                        ]),
                                      ]),
                                      TableRow(children: [
                                        Column(children: [
                                          Container(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: Text(
                                                'Toatal Trucks',
                                                style: style,
                                              ),
                                            ),
                                          )
                                        ]),
                                        Column(children: [Text(':')]),
                                        Column(children: [
                                          Container(
                                              alignment: Alignment.topLeft,
                                              child: Text('5'))
                                        ]),
                                      ]),
                                      TableRow(children: [
                                        Column(children: [
                                          Container(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              'Total Weights',
                                              style: style,
                                            ),
                                          )
                                        ]),
                                        Column(children: [Text(':')]),
                                        Column(children: [
                                          Container(
                                              alignment: Alignment.topLeft,
                                              child: Text('5680MT'))
                                        ]),
                                      ]),
                                      TableRow(children: [
                                        Column(),
                                        Column(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 18.0),
                                          child: Column(children: []),
                                        ),
                                      ]),
                                    ],
                                  ),
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
