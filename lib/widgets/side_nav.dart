import 'package:flutter/material.dart';

class EndDrawer extends StatefulWidget {
  final Function _openDrawer;
  final Function _closeEndDrawer;

  EndDrawer(this._openDrawer, this._closeEndDrawer);

  @override
  _EndDrawerState createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context)
          .copyWith(canvasColor: Colors.black87.withOpacity(0.8)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.70,
        child: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                        size: 65,
                      ),
                      onTap: widget._closeEndDrawer,
                    ),
                    const Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                // SizedBox(
                //       height: 30,
                // ),
                Divider(
                  height: 20,
                  color: Colors.white70,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(
                          Icons.car_rental,
                          color: Colors.white,
                          size: 35,
                        ),
                        onTap: widget._closeEndDrawer,
                      ),
                      const Text(
                        'All weightment',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 8,
                  color: Colors.white70,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 40,
                        ),
                        onTap: widget._closeEndDrawer,
                      ),
                      const Text(
                        'Inward weightment',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 8,
                  color: Colors.white70,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 40,
                        ),
                        onTap: widget._closeEndDrawer,
                      ),
                      const Text(
                        'Outward weightment',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),

                Divider(
                  height: 8,
                  color: Colors.white70,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(
                          Icons.assignment,
                          color: Colors.white,
                          size: 30,
                        ),
                        onTap: widget._closeEndDrawer,
                      ),
                      const Text(
                        'Daily Transaction Register',
                        style: TextStyle(color: Colors.white, fontSize: 12.5),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 12,
                  color: Colors.white70,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 35,
                        ),
                        onTap: widget._closeEndDrawer,
                      ),
                      const Text(
                        'Approve Pending',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 12,
                  color: Colors.white70,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
