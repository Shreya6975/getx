import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screens/my_new_app.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Get view",
      home: MyNewApp(),
    );
  }
}
