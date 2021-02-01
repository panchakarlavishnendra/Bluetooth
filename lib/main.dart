import 'package:flutter/material.dart';
import 'package:flutter_bluetooth/screens/main_screen_page.dart';
import 'package:flutter_bluetooth/screens/select_warehouse_contact_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 1200,
        minWidth: 430,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(430, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],),
      title: 'Flutter Native Demo',
      getPages: Routes.route,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
          child: MainPage()
      ),
      // initialRoute: '/login',
      // SelectWarehouseContacts(),
      debugShowCheckedModeBanner: false,
     );
  }
}
