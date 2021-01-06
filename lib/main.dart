import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/screens/ContactSummary.dart';
import 'package:flutter_bluetooth/screens/SelectWarehouseContactScreen.dart';
import 'package:flutter_bluetooth/screens/camera.dart';
import 'package:flutter_bluetooth/screens/mainpage.dart';
import 'package:get/get.dart';
import './routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();



  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    Widget initialScreen = MainPage();

    return GetMaterialApp(
      title: 'Flutter Native Demo',
      initialRoute: '/main',
      getPages : Routes.route,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SelectWarehouseContacts(),

      // routes: {
      //   '/LaunchScreen': (BuildContext context) => new MainPage(),
      // },

    );
  }
}