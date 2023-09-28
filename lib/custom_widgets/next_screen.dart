import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Next Screen",
        ),
      ),
      body: Center(
        child: /*Text(
          "This is Next Screen",
          style: TextStyle(color: Colors.red, fontSize: 30,),
        ),*/
            Text(
          "${Get.parameters['someValue']}",
          style: const TextStyle(
            color: Colors.red,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
