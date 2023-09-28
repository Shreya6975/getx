import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/common_module/app_color.dart';
import 'package:getx/common_module/app_string.dart';
import 'package:getx/product_module/views/product_list_view.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var emailEditingController = TextEditingController();
  var storage = GetStorage();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Get Storage & Email Validation",
      theme: ThemeData(primarySwatch: AppColor.purpleColor),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Get Storage & Email Validation",
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  controller: emailEditingController,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                  child: Text(
                    "Write",
                  ),
                  onPressed: () {
                    if (GetUtils.isEmail(emailEditingController.text)) {
                      storage.write("email", emailEditingController.text);
                    } else {
                      Get.snackbar(
                        "Incorrect Email",
                        "Provide email in valid formate",
                        colorText: Colors.white,
                        backgroundColor: Colors.red,
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    debugPrint("The email is ${storage.read("email")}");
                  },
                  child: Text("Read"))
            ],
          ),
        ),
      ),
    );
  }
}
