import 'package:flutter/material.dart';

import '../const.dart';

class WeightWidget extends StatefulWidget {
  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<WeightWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Colors.green,
          height: MediaQuery.of(context).size.height * 0.15,
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
                                    fontSize: 20,
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
                            child: Text('CONTRACT',
                                style:
                                TextStyle(color: colorWhite, fontSize: 12)),
                          ),
                          Container(
                            child: Text(
                              'LOREM IPSUM',
                              style: TextStyle(
                                  color: colorWhite,
                                  fontSize: 20,
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
                            child: Text('STATUS',
                                style:
                                TextStyle(color: colorWhite, fontSize: 12)),
                          ),
                          Container(
                            child: Text('IN PROGRESS',
                                style: TextStyle(
                                    color: colorWhite,
                                    fontSize: 20,
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
                            child: Text('ACTION TYPE',
                                style:
                                TextStyle(color: colorWhite, fontSize: 12)),
                          ),
                          Container(
                            child: Text(
                              'INWARD',
                              style: TextStyle(
                                  color: colorWhite,
                                  fontSize: 20,
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
