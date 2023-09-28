import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/common_module/app_color.dart';
import 'package:getx/common_module/app_string.dart';
import 'package:getx/product_module/views/product_list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.fetchApiData,
      theme: ThemeData(primarySwatch: AppColor.purpleColor),
      debugShowCheckedModeBanner: false,
      home: ProductListView(),
    );
  }
}
