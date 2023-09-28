import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/my_controller.dart';
import 'package:getx/Model/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Controller Life cycle",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Controller Life cycle"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                // init: MyController(),
                /* initState: (state) => myController.increment(),
                dispose: (state) => myController.cleanUpTask(),*/
                builder: (controller) {
                  return Text(
                    "The Value is ${myController.count}",
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
