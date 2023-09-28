import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/count_controller.dart';

class MyNewApp extends GetWidget<CountController> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get.put(CountController());
    Get.create(() => CountController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Get view",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "The value is ${controller.count}",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint("${controller.hashCode}");
                controller.increment();
              },
              child: Text(
                "Increment",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
