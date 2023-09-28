import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Service extends GetxService {
  Future<void> incrementCounter() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int counter = (sharedPreferences.getInt('counter') ?? 0) + 1;
    debugPrint('pressed $counter time');
    await sharedPreferences.setInt('counter', counter);
  }
}
