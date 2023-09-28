import 'package:get/get.dart';
import 'package:getx/Controller/home_controller.dart';

class HomeControllerBindings implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HomeController>(() => HomeController());
  }

}