import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/screens/loading_bags_screen.dart';
import 'package:flutter_bluetooth/screens/select_warehouse_contact_screen.dart';
import 'package:get/get.dart';
import './routes.dart';
import 'screens/success_screen.dart';

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
        // home: SelectWarehouseContacts(),
        home: LoadBags());
  }
}
