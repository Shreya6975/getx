import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dialog"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Show Dialog"),
                onPressed: () {
                  // Get.defaultDialog();
                  Get.defaultDialog(
                    title: "Dialog Title",
                    titleStyle: const TextStyle(
                      fontSize: 35,
                    ),
                    middleText: "This is middle Text",
                    middleTextStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    backgroundColor: Colors.purple,
                    radius: 80,
                    content: const Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text(
                            "Data loading",
                          ),
                        ),
                      ],
                    ),
                    textCancel: "Cancel",
                    cancelTextColor: Colors.white,
                    textConfirm: "Confirm",
                    confirmTextColor: Colors.white,
                    onCancel: () {},
                    onConfirm: () {},
                    buttonColor: Colors.green,
                    cancel: const Text(
                      "Cancels",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    confirm: const Text(
                      "Confirms",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text(
                          "Action-1",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Action-2",
                        ),
                      ),
                    ],
                    barrierDismissible: false,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
