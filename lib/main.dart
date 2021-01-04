import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/screens/SelectWarehouseContactScreen.dart';
import 'package:flutter_bluetooth/screens/camera.dart';
import 'package:flutter_bluetooth/screens/mainpage.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();



  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    Widget initialScreen = MainPage();

    return MaterialApp(
      title: 'Flutter Native Demo',
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