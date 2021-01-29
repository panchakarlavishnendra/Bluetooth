import 'package:flutter_bluetooth/screens/cad_summary_screen.dart';
import 'package:flutter_bluetooth/screens/chat_page.dart';
import 'package:flutter_bluetooth/screens/connected_devices_screen.dart';
import 'package:flutter_bluetooth/screens/daily_transaction_register_screen.dart';
import 'package:flutter_bluetooth/screens/daily_vehicle_transaction_screen.dart';
import 'package:flutter_bluetooth/screens/loading_bags_screen.dart';
import 'package:flutter_bluetooth/screens/main_screen_page.dart';
import 'package:flutter_bluetooth/screens/pending_approvals.dart';
import 'package:flutter_bluetooth/screens/pending_notes_screen.dart';
import 'package:flutter_bluetooth/screens/select_warehouse_contact_screen.dart';
import 'package:flutter_bluetooth/screens/success_screen.dart';
import 'package:flutter_bluetooth/screens/upload_weighment_document.dart';
import 'package:get/get.dart';

import 'screens/contract_summary_screen.dart';
import 'screens/deleverey_orders.dart';
import 'screens/quality_check_screen.dart';
import 'screens/select_warehouse_screen.dart';
import 'screens/truck_stacking_summary.dart';
import 'screens/truck_weightment_screen.dart';

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
        transition: Transition.rightToLeft
    ),
    GetPage(
      name: '/selectWareHouseContact',
      page: () => SelectWarehouseContacts(),
        transition: Transition.rightToLeft
    ),
    GetPage(
      name: '/selectWareHouse',
      page: () => SelectWareHouse(),
        transition: Transition.rightToLeft
    ),
    GetPage(
      name: '/contactsummary',
      page: () => ContractSummary(),
        transition: Transition.rightToLeft
    ),
    GetPage(
      name: '/truckweightment',
      page: () => TruckWeightment(),
        transition: Transition.rightToLeft
    ),
    GetPage(
      name: '/quality',
      page: () => QualityCheck(),
        transition: Transition.rightToLeft
    ),
    GetPage(
      name: '/truckstacking',
      page: () => TruckStackingSummary(),
        transition: Transition.rightToLeft
    ),
    GetPage(
      name: '/delievery',
      page: () => DelieveryOrders(),
        transition: Transition.rightToLeft
    ),
    GetPage(
      name: '/loadbags',
      page: () => LoadBags(),
        transition: Transition.rightToLeft
    ),
    GetPage(
      name: '/uploaddocuemnts',
      page: () => UploadWeighmentDocumentScreen(),
        transition: Transition.rightToLeft
    ),
    GetPage(
      name: '/pending',
      page: () => PendingApprovals(),
        transition: Transition.rightToLeft
    ),
    GetPage(
      name: '/success',
      page: () => Sucess(),
        transition: Transition.rightToLeft
    ),
    GetPage(
      name: '/selectdevicepage',
      page: () => SelectBondedDevicePage(),
        transition: Transition.downToUp
    ),
    GetPage(
      name: '/chatpage',
      page: () => ChatPage(),
        transition: Transition.rightToLeft
    ),
    GetPage(
        name: '/dailytranasactions',
        page: () => DailyTranasactions(),
        transition: Transition.rightToLeft
    ),
    GetPage(
        name: '/notes',
        page: () => PendingNotes(),
      transition: Transition.leftToRight
    ),
    GetPage(
        name: '/dailyvehicletransactions',
        page: () => DailyVehicleTransaction(),
        transition: Transition.zoom
    ),
    GetPage(
        name: '/cadsummary',
        page: () => CadSummary(),
        transition: Transition.zoom
    ),

  ];
}