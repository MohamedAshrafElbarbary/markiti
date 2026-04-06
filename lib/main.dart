import 'package:flutter/material.dart';
import 'package:markiti_app/core/function/cache_helper.dart';
import 'package:markiti_app/core/services/servise_locator.dart';
import 'package:markiti_app/markiti_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  servserLocator();
  runApp(const MarkitiApp());
}
