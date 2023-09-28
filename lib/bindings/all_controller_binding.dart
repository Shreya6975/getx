import 'package:get/get.dart';
import 'package:getx/Controller/my_controller.dart';

import '../Controller/home_controller.dart';

class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<HomeController>(() => HomeController());
  }

}