import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Service/service.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  debugPrint("starting services");
  await Get.putAsync<Service>(() async => await Service());
  debugPrint("all services started");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX Service",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX Service"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text(
                  "Increment",
                ),
                onPressed: () {
                  Get.find<Service>().incrementCounter();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
