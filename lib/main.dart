import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home.dart';
import 'package:getx/unknown_routes.dart';
import 'next_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var count = 0.obs;

  void increment() {
    count++;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State Management",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("State Management"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Count value is $count",
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: const Text(
                  "Increment",
                ),
                onPressed: () {
                  increment();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
