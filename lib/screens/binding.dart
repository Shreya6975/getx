import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/my_controller.dart';
import '../Bindings/home_controller_bindings.dart';
import '../Bindings/my_app_controller_binding.dart';
import '../custom_widgets/home.dart';

void main() {
  MyAppControllerBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: AllControllerBinding(),
      title: "Binding",
      getPages: [
        GetPage(
          name: '/home',
          page: () => Home(),
          binding: BindingsBuilder(
                () => Get.lazyPut<HomeControllerBindings>(
                  () => HomeControllerBindings(),
            ),
          ),
        )
      ],
      /*getPages: [
        GetPage(
          name: '/home',
          page: () => Home(),
          binding: HomeControllerBindings(),
        )
      ],*/
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Binding"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                    () => Text(
                  "The value is ${Get.find<MyController>().count}",
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              ElevatedButton(
                child: const Text(
                  "Increment",
                  // "Upper",
                ),
                onPressed: () {
                  Get.find<MyController>().increment();
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: const Text(
                  "Home",
                  // "Upper",
                ),
                onPressed: () {
                  // Get.to(Home());
                  Get.to(Home(), binding: HomeControllerBindings());
                  // Get.toNamed('/home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
