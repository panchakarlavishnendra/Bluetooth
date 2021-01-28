import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class DailyTranasactions extends StatefulWidget {
  @override
  _DailyTranasactionsState createState() => _DailyTranasactionsState();
}

class _DailyTranasactionsState extends State<DailyTranasactions> {
  var selectedVal;
  var _groupValue;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.brown[900],
            indicatorWeight: 10.0,
            onTap: (a) {},
            tabs: [
              Tab(
                  child: Text(
                    'ONGOING',
                    style: TextStyle(fontSize: 16),
                  )),
              Tab(
                child: Text('COMPLETED', style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
          title: Text('Daily Transaction Register'),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.45,
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.25,
                          child: Card(
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      child:
                                      SvgPicture.asset(
                                        "assets/icons/out-going.svg",
                                        height: 25, width: 25,
                                      ),

                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text('2344'),
                                        Text('Outgoing'),
                                      ],
                                    )

                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      child: SvgPicture.asset(
                                        "assets/icons/out-going.svg",
                                        height: 25, width: 25,
                                      ),

                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text('2344'),
                                        Text('Incoming'),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      child:
                                      SvgPicture.asset(
                                        "assets/icons/pending.svg", height: 25,
                                        width: 25,
                                      ),

                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text('2344'),
                                        Text('Pending'),
                                      ],
                                    )

                                  ],
                                ),
                              ],
                            ),
                            elevation: 5,
                          ),
                        ),
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.45,
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.25,
                          child: Card(
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: SvgPicture.asset(
                                        "assets/icons/motherbag.svg",
                                        height: 25, width: 25,
                                      ),

                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text('2344'),
                                        Text('Mother Bags'),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: SvgPicture.asset(
                                        "assets/icons/madeup.svg", height: 25,
                                        width: 25,
                                      ),

                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text('2344'),
                                        Text('Madeup Bags'),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: SvgPicture.asset(
                                        "assets/icons/w.svg", height: 25,
                                        width: 25,
                                      ),


                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text('2344'),
                                        Text('MT. Total  WT'),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            elevation: 5,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Last updated at      :  ',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'time    ',
                            style: TextStyle(fontSize: 14),
                          ),
                          Icon(
                            Icons.autorenew_outlined,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.83,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          _myRadioButton(
                            title: "INWARD",
                            value: 0,
                            onChanged: (newValue) =>
                                setState(() => _groupValue = newValue),
                          ),
                          _myRadioButton(
                            title: "OUTWARD",
                            value: 1,
                            onChanged: (newValue) =>
                                setState(() => _groupValue = newValue),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20),
                      child: _myCard(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28.0),
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.055,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.9,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          onPressed: () => {Get.toNamed('/selectWareHouse')},
                          color: Colors.cyan[900],
                          textColor: Colors.white,
                          child: Text('DRT SUMMARY',
                              style: TextStyle(fontSize: 14)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(),
          ],
        ),
        endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
      ),
    );
  }

  Widget _myRadioButton({String title, int value, Function onChanged}) {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.41,
      height: MediaQuery
          .of(context)
          .size
          .height * 0.06,
      child: RadioListTile(
        value: value,
        groupValue: _groupValue,
        onChanged: onChanged,
        title: Text(
          title,
          style: TextStyle(fontSize: 12.2, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _myCard() {
    return Card(
      elevation: 5,
      child: Container(
        height: MediaQuery.of(context).size.height*0.23,
        width:  MediaQuery.of(context).size.width*1,
        child: ListView(
          children: [
          Row(
            children: [
              Container(
                width:  MediaQuery.of(context).size.width*0.75,
                height: MediaQuery.of(context).size.height*0.25,
                child: Padding(
                  padding: const EdgeInsets.only(left:28.0,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Truck ID', style: TextStyle(fontSize: 13),),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                                    child: Text(
                                      'Vehicle Number',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                          SvgPicture.asset(
                            "assets/icons/OTP.svg",
                            height: 35, width: 35,
                          ),
                        ],
                      ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                                Text(
                                  '323',
                                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Text(
                                    'AP-06-PQ-3262',
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: RaisedButton(
                                    color: Colors.teal,
                                    child: Text(
                                      'In-Progress',
                                      style: TextStyle(color: Colors.white, fontSize: 13),
                                    ),
                                    onPressed: () {},
                                  ),
                                )
              ],
                  )
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.10,
                color: Colors.green[900],
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),

          ],
        ),
      ),
    );
  }
}
  // Widget _myCard() {
  //   return Card(
  //     elevation: 5,
  //     child: Container(
  //       height: MediaQuery.of(context).size.height*0.28,
  //       width:MediaQuery.of(context).size.width*0.9,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Column(
  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 'Truck ID',
  //                 style: TextStyle(fontSize: 18),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.symmetric(vertical: 10.0),
  //                 child: Text(
  //                   'Vehicle Number',
  //                   style: TextStyle(fontSize: 18),
  //                 ),
  //               ),
  //               Icon(
  //                 Icons.add_circle,
  //                 size: 45,
  //               )
  //             ],
  //           ),
  //           Column(
  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 '323',
  //                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.symmetric(vertical: 10.0),
  //                 child: Text(
  //                   'AP-06-PQ-3262',
  //                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 15.0),
  //                 child: RaisedButton(
  //                   color: Colors.teal,
  //                   child: Text(
  //                     'In-Progress',
  //                     style: TextStyle(color: Colors.white, fontSize: 15),
  //                   ),
  //                   onPressed: () {},
  //                 ),
  //               )
  //             ],
  //           ),
  //           Container(
  //             width: MediaQuery.of(context).size.width*0.3 ,
  //             color: Colors.red,
  //             child: Column(
  //
  //               children: [
  //                 FlatButton(
  //                   onPressed: () {
  //                     Get.toNamed('/pending');
  //                   },
  //                   child: Icon(
  //                     Icons.arrow_forward_ios_sharp,
  //                     color: Colors.white,
  //                     size: 30,
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );


