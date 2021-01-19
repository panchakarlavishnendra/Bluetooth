import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:flutter_bluetooth/models/warehouse_model.dart';




Future<String> _loadAStudentAsset() async {
  return await rootBundle.loadString('C:\Users\admin\Desktop\Bluetooth\lib\models\warehousedata');
}

Future loadStudent() async {
  String jsonString = await _loadAStudentAsset();
  final jsonResponse = json.decode(jsonString);
  WarehouseModel warehousedata = new WarehouseModel.fromJson(jsonResponse);
  print(warehousedata.createdAt.toString());
}
