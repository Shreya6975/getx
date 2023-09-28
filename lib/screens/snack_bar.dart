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
      title: "SnackBar",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Snack bar"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Show Snack bar"),
                onPressed: () {
                  Get.snackbar(
                    "Snack bar Title", "This will be snack bar message",
                    snackPosition: SnackPosition.BOTTOM,
                    // titleText: Text("Another title"),
                    // messageText: Text(
                    //   "Another Message",
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //   ),
                    // ),
                    colorText: Colors.red,
                    backgroundColor: Colors.black,
                    borderRadius: 30,
                    margin: const EdgeInsets.all(10),
                    // maxWidth: 100,
                    animationDuration: const Duration(milliseconds: 3000),
                    backgroundGradient: const LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.green,
                      ],
                    ),
                    borderColor: Colors.purple,
                    borderWidth: 4,
                    boxShadows: [
                      const BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(30, 50),
                        spreadRadius: 20,
                        blurRadius: 8,
                      ),
                    ],
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.bounceInOut,
                    duration: const Duration(
                      milliseconds: 8000,
                    ),
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    shouldIconPulse: false,
                    leftBarIndicatorColor: Colors.white,
                    mainButton: TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: () {
                        debugPrint("Retry Clicked");
                      },
                      child: const Text(
                        "Retry",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onTap: (snack) {
                      debugPrint("Snack bar Clicked");
                    },
                    overlayBlur: 5,
                    overlayColor: Colors.grey,
                    padding: const EdgeInsets.all(50),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.deepOrange,
                    progressIndicatorValueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                    reverseAnimationCurve: Curves.bounceInOut,
                    snackbarStatus: (val) {
                      debugPrint("$val");
                    },
                    userInputForm: const Form(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(),
                          ),
                        ],
                      ),
                    ),
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
