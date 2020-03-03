import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'model/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn-In-Depth',
      navigatorKey: Get.key,
      initialRoute: '/',
      routes: Routes().myRoutes,
    );
  }
}
