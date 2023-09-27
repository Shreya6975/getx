import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home.dart';
import 'package:getx/unknown_routes.dart';
import 'next_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(
          name: '/home',
          page: () => Home(),
        ),
        /*GetPage(
          name: '/nextScreen',
          page: () => const NextScreen(),
          transition: Transition.leftToRight,
        ),*/
        GetPage(
          name: '/nextScreen/:someValue',
          page: () => NextScreen(),
          transition: Transition.leftToRight,
        ),
      ],
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => UnknownRoute(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Navigation"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Go to Home"),
                onPressed: () {
                  Get.toNamed(
                    "/x",
                  );
                  /*Get.toNamed(
                    "/home",
                  );*/
                  /*Get.to(
                    const Home(),
                    fullscreenDialog: true,
                    transition: Transition.zoom,
                    duration: Duration(
                      milliseconds: 4000,
                    ),
                    curve: Curves.bounceInOut,
                  );*/

                  // Go to home screen but no option to return to previous screen
                  // Get.off(
                  //   const Home(),
                  // );
                  // Get.offNamed(
                  //   "/home",
                  // );
                  // Go to home screen and cancel all previous screens/routes
                  // Get.offAll(
                  //   const Home(),
                  // );
                  // Get.offAllNamed(
                  //   "/home",
                  // );
                  // Go to next screen with some data
                  // Get.to(
                  //   const Home(),
                  //   arguments: "Data from Main",
                  // );
                  // Go to next screen and receive data sent from home screen
                  /*var data = await Get.to(
                      const Home(),
                    );
                    debugPrint("The Received data is $data");*/
                  // Dynamic URL link
                  // Get.toNamed(
                  //   "/home?channel=Ripples Code&content=Flutter GetX",
                  // );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
