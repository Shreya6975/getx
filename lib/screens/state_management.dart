import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/my_controller.dart';
import 'package:getx/Model/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //var count = 0.obs;

  /*void increment() {
    count++;
  }*/

  // var student = Student();

  // final student = Student(name: "tom", age: 26).obs;

  // MyController myController = Get.put(MyController());

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
              GetBuilder<MyController>(
                init: MyController(),
                builder: (controller) {
                  return Text(
                    "The Value is ${controller.count}",
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  );
                },
              ),
              /*GetX<MyController>(
                init: MyController(),
                builder: (controller) {
                  return Text(
                    "The Value is ${controller.count}",
                    // "The Value is ${myController.count}",
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  );
                },
              ),*/
              /* Obx(
                () => Text(
                  // "Name is ${student.name.value}",
                  // "Name is ${student.value.name}",
                  // "Name is ${myController.student.name}",
                  "Name is ${myController.student.value.name}",
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),*/
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: const Text(
                  "Increment",
                  // "Upper",
                ),
                onPressed: () {
                  //increment();
                  // student.name.value = student.name.value.toUpperCase();

                  /* student.update((student) {
                    student!.name = student.name!.toString().toUpperCase();
                  });*/

                  // myController.convertToUpperCase();
                  // myController.convertUpperCase();

                  // myController.increment();

                  Get.find<MyController>().increment();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
