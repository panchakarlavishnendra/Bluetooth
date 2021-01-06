import 'package:flutter_bluetooth/screens/SelectWarehouseContactScreen.dart';

import 'screens/contract_summary_screen.dart';
import 'screens/mainpage.dart';
import 'package:get/get.dart';

class Routes {
  static final route = [
    GetPage(
        name: '/contractSummary',
        page: () => ContractSummary(),
        transition: Transition.rightToLeft
      ),
    GetPage(
      name: '/main',
      page: () => MainPage(),
    ),
    GetPage(
      name: '/selectWareHouse',
      page: () => SelectWarehouseContacts(),
    ),
  ];
}