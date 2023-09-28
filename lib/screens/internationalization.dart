import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/my_controller.dart';

import '../messages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      title: "Internationalization",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Internationalization"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.purple,
                ),
              ),
              ElevatedButton(
                child: const Text(
                  "Hindi",
                  // "Upper",
                ),
                onPressed: () {
                  myController.changeLanguage('hi', 'IN');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: const Text(
                  "French",
                  // "Upper",
                ),
                onPressed: () {
                  myController.changeLanguage('fr', 'FR');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: const Text(
                  "English",
                  // "Upper",
                ),
                onPressed: () {
                  myController.changeLanguage('en', 'US');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
