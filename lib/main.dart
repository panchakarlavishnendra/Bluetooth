import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/screens/daily_transaction_register_screen.dart';
import 'package:flutter_bluetooth/screens/main_screen_page.dart';
import 'package:flutter_bluetooth/screens/pending_notes_screen.dart';

import 'package:flutter_bluetooth/screens/quality_check_screen.dart';
import 'package:flutter_bluetooth/screens/select_warehouse_contact_screen.dart';
import 'package:flutter_bluetooth/screens/test_screen.dart';
import 'package:flutter_bluetooth/screens/upload_weighment_document.dart';

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
      home:
      // SelectWarehouseContacts(),
      PendingNotes(),
      // DailyTranasactions(),
      debugShowCheckedModeBanner: false,
    );
  }
}
