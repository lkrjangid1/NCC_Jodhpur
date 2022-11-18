import 'package:ncc/core/app_export.dart';
import 'package:ncc/presentation/welcome_screen/models/welcome_model.dart';

class WelcomeController extends GetxController {
  Rx<WelcomeModel> welcomeModelObj = WelcomeModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.splashScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
