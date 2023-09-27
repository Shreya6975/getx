import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This is Home Screen",
              style: TextStyle(
                color: Colors.purpleAccent,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                /*Get.toNamed(
                  "/nextScreen",
                );*/
                Get.toNamed(
                  "/nextScreen/1324",
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              child: const Text(
                "Next Screen",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                // Get.back();
                Get.back(
                  result: "This is from home screen",
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              child: const Text(
                "Back to Main",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            /*Text(
              "${Get.arguments}",
              style: const TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),*/
            // Text(
            //   "Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}",
            //   style: const TextStyle(
            //     color: Colors.red,
            //     fontSize: 30,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
