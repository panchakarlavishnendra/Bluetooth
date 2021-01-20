import 'package:flutter_bluetooth/screens/loading_bags_screen.dart';
import 'package:flutter_bluetooth/screens/main_screen_page.dart';
import 'package:flutter_bluetooth/screens/pending_approvals.dart';
import 'package:flutter_bluetooth/screens/select_warehouse_contact_screen.dart';
import 'package:flutter_bluetooth/screens/success_screen.dart';
import 'package:flutter_bluetooth/screens/upload_weighment_document.dart';
import 'package:flutter_bluetooth/widgets/otp_screen.dart';
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
        transition: Transition.rightToLeft),
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
      page: () => TruckWeightment(),
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
      name: '/delievery',
      page: () => DelieveryOrders(),
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