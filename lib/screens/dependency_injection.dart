import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/my_controller.dart';

import '../messages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // MyController myController = Get.put(MyController(),tag: 'instance1',permanent: true);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => MyController());
    // Get.lazyPut(() => MyController(),tag: 'instance2',fenix: true);
    // Get.create<MyController>(() => MyController());
    Get.putAsync<MyController>(() async => await MyController());
    return GetMaterialApp(
      title: "Dependency Injection",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dependency Injection"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text(
                  "Click Me",
                  // "Upper",
                ),
                onPressed: () {
                  // Get.find<MyController>();
                  // Get.find<MyController>(tag: 'instance1');
                  Get.find<MyController>().incrementCounter();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
