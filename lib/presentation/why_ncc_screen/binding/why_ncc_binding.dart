import '../controller/why_ncc_controller.dart';
import 'package:get/get.dart';

class WhyNccBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhyNccController());
  }
}
