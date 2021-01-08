
import 'package:flutter_bluetooth/screens/main_screen_page.dart';
import 'package:flutter_bluetooth/screens/select_warehouse_contact_screen.dart';
import 'screens/camera_screen.dart';


import 'screens/quality_check_screen.dart';
import 'screens/contract_summary_screen.dart';
import 'screens/select_warehouse_screen.dart';
import 'package:get/get.dart';
import 'screens/deleverey_orders.dart';
import 'screens/truck_stacking_summary.dart';
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
    ),
    GetPage(
      name: '/camera',
      page: () => Camera(),
    ),
    GetPage(
      name: '/quality',
      page: () => QualityCheck(),
    ),
    GetPage(
      name: '/truckstacking',
      page: () => TruckStackingSummary(),
    ),
    GetPage(
      name: '/pendingapprovals',
      page: () => PendingApprovals(),
    )
  ];
}