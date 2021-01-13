import 'package:flutter_bluetooth/screens/loading_bags_screen.dart';
import 'package:flutter_bluetooth/screens/main_screen_page.dart';
import 'package:flutter_bluetooth/screens/otp_screen.dart';
import 'package:flutter_bluetooth/screens/select_warehouse_contact_screen.dart';
import 'package:flutter_bluetooth/screens/success_screen.dart';
import 'package:flutter_bluetooth/screens/upload_weighment_document.dart';
import 'screens/truck_weightment_screen.dart';

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
      name: '/truckweightment',
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
    ),
    GetPage(
      name: '/loadbags',
      page: () => LoadBags(),
    ),
    GetPage(
      name: '/uploaddocuemnts',
      page: () => UploadWeighmentDocumentScreen(),
    ),
    GetPage(
      name: '/otpscreen',
      page: () => OTPPage(),
    ),
    GetPage(
      name: '/pending',
      page: () => PendingApprovals(),
    ),
    GetPage(
      name: '/success',
      page: () => Sucess(),
    ),
  ];
}