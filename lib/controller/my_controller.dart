import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Model/student.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyController extends GetxController {
  void changeLanguage(var languageCode, var countryCode) {
    var locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }

  Future<void> incrementCounter() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int counter = (sharedPreferences.getInt('counter') ?? 0) + 1;
    debugPrint('pressed $counter time');
    await sharedPreferences.setInt('counter', counter);
  }

  // var count = 0;

  var count = 0.obs;

  void increment() {
    count++;
    // update(['txtCount']);
    //update();
  }

/*
  @override
  void onInit() {
    // TODO: implement onInit
    debugPrint("Init Called");
    super.onInit();
    ever(count, (_) => debugPrint("$count"));
    // everAll([count], (_) => debugPrint("$count"));
    // once(count, (_) => debugPrint("$count"));
*/
/*    debounce(
      count,
      (_) => debugPrint("When the user stop trying for 1 sec the value of count will be printed"),
      time: Duration(
        seconds: 1,
      ),
    );*/ /*

    */
/*interval(
      count,
      (_) => debugPrint("Ignore all changes"),
      time: Duration(
        seconds: 3,
      ),
    );*/ /*

  }
*/

/*var student = Student();

  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }*/

/* var student = Student(name: "tom", age: 26).obs;

  void convertUpperCase() {
    student.update((student) {
      student!.name = student.name!.toUpperCase();
    });
  }*/

/* Future<void> increment() async {
    await Future.delayed(
      const Duration(
        seconds: 5,
      ),
    );
    count++;
    update();
  }

  void cleanUpTask() {
    debugPrint("clean up task");
  }*/

/*@override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }*/
}
