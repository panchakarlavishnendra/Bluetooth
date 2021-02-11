import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/widgets/side_nav.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class DailyTransactionsInward extends StatefulWidget {
  @override
  _DailyTransactionsState createState() => _DailyTransactionsState();
}

class _DailyTransactionsState extends State<DailyTransactionsInward> {
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
                'inward'.toUpperCase(),
                style: TextStyle(fontSize: 16),
              )),
              Tab(
                child: Text('outward'.toUpperCase(),
                    style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
          title: Text(
            'Daily Transaction Register',
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Inward List'.toUpperCase(),
                              style: TextStyle(fontSize: 20),
                            ),
                            SvgPicture.asset(
                              "assets/icons/out-going.svg",
                              height: 45,
                              width: 45,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: _myCard(),
                      )
                    ]),
              ),
            ),
            Column()
          ],
        ),
        endDrawer: EndDrawer(_openEndDrawer, _closeEndDrawer),
      ),
    );
  }

  Widget _myCard() {
    return Card(
      elevation: 5,
      child: Container(
        // color: Colors.grey[200],
        height: MediaQuery.of(context).size.height * 0.23,
        width:  MediaQuery.of(context).size.width * 0.85,
        child: ListView(
          children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('20 MAR 2020'),
                      ),
                    ),
                    Divider(thickness: 2),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                            padding:   const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                                child: Text(
                                  'Client'.toUpperCase(),
                                  style: TextStyle(fontSize: 18,color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                                child: Text(
                                  'commodity'.toUpperCase(),
                                  style: TextStyle(fontSize: 18,color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                                child: Text(
                                  'contract'.toUpperCase(),
                                  style: TextStyle(fontSize: 18,color: Colors.grey),
                                ),
                              ),

                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                              child: Text(
                                '323',
                                style: TextStyle(
                                  fontSize: 20, ),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                              child: Text(
                                'AP-06-PQ-3262',
                                style: TextStyle(
                                  fontSize: 20,),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                              child: Text(
                                'AP-06-PQ-3262',
                                style: TextStyle(
                                  fontSize: 20,),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.10,
                color: Colors.green[900],
                child: GestureDetector(
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                  onTap: (){Get.toNamed('/pending');},
                ),
              ),
            ],
          )
          ],
        ),
      ),
    );
  }
}
