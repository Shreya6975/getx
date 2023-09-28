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
      title: "Workers",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Workers"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text(
                  "Increment",
                  // "Upper",
                ),
                onPressed: () => myController.increment(),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  onChanged: (value) {
                    myController.increment();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
