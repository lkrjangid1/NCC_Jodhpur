import '../controller/mobile_controller.dart';
import 'package:get/get.dart';

class MobileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileController());
  }
}
