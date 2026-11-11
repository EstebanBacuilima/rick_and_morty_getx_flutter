import 'package:demogetx/app/modules/home/controllers/home_cotroller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // means it will create the controller only when needed (lazy loading).
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
