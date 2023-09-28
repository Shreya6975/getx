import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/my_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Unique ID",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Unique ID"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                id: 'txtCount',
                // init: MyController(),
                /* initState: (state) => myController.increment(),
                dispose: (state) => myController.cleanUpTask(),*/
                builder: (controller) {
                  return Text(
                    "The Value is ${controller.count}",
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  );
                },
              ),
              GetBuilder<MyController>(
                builder: (controller) {
                  return Text(
                    "The Value is ${controller.count}",
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: const Text(
                  "Increment",
                  // "Upper",
                ),
                onPressed: () => myController.increment(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
