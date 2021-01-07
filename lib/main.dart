import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/screens/deleverey_orders.dart';
import 'package:flutter_bluetooth/screens/pending_approvals.dart';
import 'package:flutter_bluetooth/screens/select_warehouse_contact_screen.dart';
import 'package:get/get.dart';
import './routes.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Native Demo',
      getPages: Routes.route,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PendingApprovals(),
    );
  }
}
