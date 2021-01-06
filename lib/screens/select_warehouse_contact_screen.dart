import 'package:flutter/material.dart';
// import 'package:group_radio_button/group_radio_button.dart';
import 'package:get/get.dart';

class SelectWarehouseContacts extends StatefulWidget {
  SelectWarehouseContacts({Key key}) : super(key: key);
  @override
  _SelectWarehouseContacts createState() => new _SelectWarehouseContacts();
}

class _SelectWarehouseContacts extends State<SelectWarehouseContacts> {
  List<String> _locations = ['A', 'B', 'C', 'D'];
  String _selectedLocation;

  var _value;

  
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text("Select Warehouse & Contacts"),backgroundColor: Colors.green[800],),
  //   body:Column(
  //     children: <Widget>[
  // Container(
  //   height: MediaQuery.of(context).size.height*0.75,
  //   width:MediaQuery.of(context).size.width*1,
  //       child: ListView(
  //           children: <Widget>[
  //        Padding(
  //         padding: EdgeInsets.symmetric(horizontal: 20),
  //         child: Container(
  //           height: 60,
  //             width:MediaQuery.of(context).size.width*0.85,
  //           child: DropdownButton(
  //             hint: Text(
  //                 'Select Warehouse'), // Not necessary for Option 1
  //             value: _selectedLocation,
  //             isExpanded: true,
  //             onChanged: (newValue) {
  //               setState(() {
  //                 _selectedLocation = newValue;
  //               });
  //             },
  //             items: _locations.map((location) {
  //               return DropdownMenuItem(
  //                 child: new Text(location),
  //                 value: location,
  //               );
  //             }).toList(),
  //           ),
  //         ),
  //       ),
  //             Padding(
  //               padding: EdgeInsets.symmetric(horizontal: 20),
  //               child: Container(
  //                 height: 60,
  //                 width:MediaQuery.of(context).size.width*0.85,
  //                 child: DropdownButton(
  //                   hint: Text(
  //                       'Select Contract'), // Not necessary for Option 1
  //                   value: _selectedLocation,
  //                   isExpanded: true,
  //                   onChanged: (newValue) {
  //                     setState(() {
  //                       _selectedLocation = newValue;
  //                     });
  //                   },
  //                   items: _locations.map((location) {
  //                     return DropdownMenuItem(
  //                       child: new Text(location),
  //                       value: location,
  //                     );
  //                   }).toList(),
  //                 ),
  //               ),
  //             ),
  //             Padding(
  //               padding: EdgeInsets.symmetric(horizontal: 20),
  //               child: Container(
  //                 height: 60,
  //                 width:MediaQuery.of(context).size.width*0.85,
  //                 child: DropdownButton(
  //                   hint: Text(
  //                       'Select Weigh Bridge'), // Not necessary for Option 1
  //                   value: _selectedLocation,
  //                   isExpanded: true,
  //                   onChanged: (newValue) {
  //                     setState(() {
  //                       _selectedLocation = newValue;
  //                     });
  //                   },
  //                   items: _locations.map((location) {
  //                     return DropdownMenuItem(
  //                       child: new Text(location),
  //                       value: location,
  //                     );
  //                   }).toList(),
  //                 ),
  //               ),
  //             ),
  //             SizedBox(height: 30),
  //
  //     ]
  //
  //     ),
  //
  //
  //
  //   ),
  //   RaisedButton(
  //
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(3.0),
  //        ),
  //     onPressed: () {},
  //     color: Colors.cyan[900],
  //     textColor: Colors.white,
  //     child: Padding(
  //       padding: const EdgeInsets.only(left:100, right: 100, top: 18, bottom: 18),
  //       child: Text("Continue".toUpperCase(),
  //           style: TextStyle(fontSize: 14)),
  //     ),
  //   )
  // ]
  //
  // )
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
      appBar: AppBar(title: Text('Drawer Demo')),
      body: Column(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width * 1,
          child: ListView(children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.85,
                child: DropdownButton(
                  hint: Text('Select Warehouse'), // Not necessary for Option 1
                  value: _selectedLocation,
                  isExpanded: true,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation = newValue;
                    });
                  },
                  items: _locations.map((location) {
                    return DropdownMenuItem(
                      child: new Text(location),
                      value: location,
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.85,
                child: DropdownButton(
                  hint: Text('Select Contract'), // Not necessary for Option 1
                  value: _selectedLocation,
                  isExpanded: true,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation = newValue;
                    });
                  },
                  items: _locations.map((location) {
                    return DropdownMenuItem(
                      child: new Text(location),
                      value: location,
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.85,
                child: DropdownButton(
                  hint:
                      Text('Select Weigh Bridge'), // Not necessary for Option 1
                  value: _selectedLocation,
                  isExpanded: true,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLocation = newValue;
                    });
                  },
                  items: _locations.map((location) {
                    return DropdownMenuItem(
                      child: new Text(location),
                      value: location,
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 30),
            
          ]),
        ),
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
          onPressed: () {
            Get.toNamed('/selectWareHouse');
          },
          color: Colors.cyan[900],
          textColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 18, bottom: 18),
            child:
                Text("Continue".toUpperCase(), style: TextStyle(fontSize: 14)),
          ),
        )
      ]),
      
      endDrawer:Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black87.withOpacity(0.8)
        ),child: Container(
          width: MediaQuery.of(context).size.width*0.55,
          child: Drawer(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(child: Icon(Icons.close,color: Colors.white,size: 75,),onTap:_closeEndDrawer ,),
                  const Text('Menu',style: TextStyle(color: Colors.white,fontSize: 26),),
                  ],
              ),
              Divider(
                height: 8,
                color: Colors.white70,
              ),
                          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(child: Icon(Icons.car_rental,color: Colors.white,size: 75,),onTap:_closeEndDrawer ,),
                  const Text('Menu',style: TextStyle(color: Colors.white,fontSize: 26),),
                  
                ],
              ),
                          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(child: Icon(Icons.close,color: Colors.white,size: 75,),onTap:_closeEndDrawer ,),
                  const Text('Menu',style: TextStyle(color: Colors.white,fontSize: 26),),
                  
                ],
              ),
                          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(child: Icon(Icons.close,color: Colors.white,size: 75,),onTap:_closeEndDrawer ,),
                  const Text('Menu',style: TextStyle(color: Colors.white,fontSize: 26),),
                  
                ],
              ),
                          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(child: Icon(Icons.close,color: Colors.white,size: 75,),onTap:_closeEndDrawer ,),
                  const Text('Menu',style: TextStyle(color: Colors.white,fontSize: 26),),
                 
                ],
              ),
                          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(child: Icon(Icons.close,color: Colors.white,size: 75,),onTap:_closeEndDrawer ,),
                  const Text('Menu',style: TextStyle(color: Colors.white,fontSize: 26),),
                  
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
 