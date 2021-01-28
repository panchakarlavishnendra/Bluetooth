import 'package:flutter/material.dart';

import '../const.dart';

class CustomWidget extends StatefulWidget {
  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Colors.green,
          height: MediaQuery.of(context).size.height * 0.165,
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text('VEHICLE NO',
                                style:
                                    TextStyle(color: colorWhite, fontSize: 12)),
                          ),
                          Container(
                            child: Text('Ap-06-PQ-2255',
                                style: TextStyle(
                                    color: colorWhite,
                                    fontSize: 16,
                                    fontWeight: fontBold)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text('QUANTITY',
                                style:
                                    TextStyle(color: colorWhite, fontSize: 12)),
                          ),
                          Container(
                            child: Text(
                              '886',
                              style: TextStyle(
                                  color: colorWhite,
                                  fontSize: 16,
                                  fontWeight: fontBold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text('BAG TYPE',
                                style:
                                    TextStyle(color: colorWhite, fontSize: 12)),
                          ),
                          Container(
                            child: Text('MOTHER BAGS',
                                style: TextStyle(
                                    color: colorWhite,
                                    fontSize: 16,
                                    fontWeight: fontBold)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text('WEIGHT (KG)',
                                style:
                                    TextStyle(color: colorWhite, fontSize: 12)),
                          ),
                          Container(
                            child: Text(
                              '50',
                              style: TextStyle(
                                  color: colorWhite,
                                  fontSize: 16,
                                  fontWeight: fontBold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
