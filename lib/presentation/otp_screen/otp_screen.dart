import 'controller/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:ncc/core/app_export.dart';
import 'package:ncc/widgets/custom_button.dart';

class OtpScreen extends GetWidget<OtpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding:
                                  getPadding(left: 24, top: 105, right: 24),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgImage6,
                                  height: getVerticalSize(189.00),
                                  width: getHorizontalSize(210.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding:
                                  getPadding(left: 24, top: 122, right: 24),
                              child: Text("msg_otp_verificatio".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitSemiBold24))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(top: 46),
                              decoration: AppDecoration.fillBlue50,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 24, top: 20, bottom: 16),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(right: 10),
                                                  child: Text(
                                                      "lbl_1_555_555_1234".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular18
                                                          .copyWith(
                                                              height: 1.00))),
                                              Padding(
                                                  padding: getPadding(top: 11),
                                                  child: Text(
                                                      "msg_number_not_conf".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular13Gray700
                                                          .copyWith(
                                                              height: 1.00)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            top: 40, right: 25, bottom: 16),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgEdit,
                                            height: getSize(24.00),
                                            width: getSize(24.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 31, right: 24),
                              child: Text("msg_confirmation_co".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular13
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              width: getHorizontalSize(284.00),
                              margin: getMargin(left: 16, top: 12),
                              decoration: AppDecoration.etxtUnderLineGray300)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 8, right: 24),
                              child: Text("msg_confirm_phone_n".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 20, right: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CommonImageView(
                                        svgPath: ImageConstant.imgSignal,
                                        height: getSize(24.00),
                                        width: getSize(24.00)),
                                    Padding(
                                        padding: getPadding(left: 8, top: 4),
                                        child: Text("lbl_send_again".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoMedium16
                                                .copyWith(height: 1.00)))
                                  ]))),
                      CustomButton(
                          width: 375,
                          text: "lbl_submit".tr,
                          margin: getMargin(
                              left: 24, top: 33, right: 24, bottom: 5),
                          onTap: onTapSubmit,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapSubmit() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
