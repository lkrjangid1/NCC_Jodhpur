import 'package:ncc/core/app_export.dart';
import 'package:ncc/presentation/otp_screen/models/otp_model.dart';

class OtpController extends GetxController {
  Rx<OtpModel> otpModelObj = OtpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
