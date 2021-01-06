
import 'package:flutter_bluetooth/screens/main_screen_page.dart';
import 'package:flutter_bluetooth/screens/select_warehouse_contact_screen.dart';

import 'screens/contract_summary_screen.dart';
import 'screens/select_warehouse_screen.dart';
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
      name: '/selectWareHouseContact',
      page: () => SelectWarehouseContacts(),
    ),
    GetPage(
      name: '/selectWareHouse',
      page: () => SelectWareHouse(),
    ),
    GetPage(
      name: '/contactsummary',
      page: () => ContractSummary(),
    )
  ];
}