import 'package:get/get.dart';
import 'package:getx/Controller/my_controller.dart';

class MyAppControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MyController>(() => MyController());
  }
}
