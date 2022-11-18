import 'controller/about_controller.dart';
import 'package:flutter/material.dart';
import 'package:ncc/core/app_export.dart';
import 'package:ncc/widgets/app_bar/appbar_image.dart';
import 'package:ncc/widgets/app_bar/custom_app_bar.dart';

class AboutScreen extends GetWidget<AboutController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(107.00),
                leadingWidth: 45,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 21, top: 67, bottom: 16),
                    onTap: onTapArrowleft),
                title: Padding(
                    padding: getPadding(left: 12, top: 67, bottom: 20),
                    child: Text("lbl_about_ncc".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtSenRegular20)),
                styleType: Style.bgFillBlue50),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(left: 25, top: 40, right: 22),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                              padding: getPadding(right: 10),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgImage1,
                                  height: getVerticalSize(154.00),
                                  width: getHorizontalSize(130.00))),
                          Padding(
                              padding: getPadding(top: 14, right: 10),
                              child: Text("msg_national_cadet".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium20)),
                          Container(
                              width: getHorizontalSize(381.00),
                              margin: getMargin(top: 13),
                              child: Text("msg_the_national_ca".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular15)),
                          Padding(
                              padding: getPadding(top: 21, right: 10),
                              child: Text("lbl_motto_of_ncc".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium20)),
                          Padding(
                              padding: getPadding(top: 14, right: 10),
                              child: Text("msg_the_motto_of_nc".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular15)),
                          Padding(
                              padding: getPadding(top: 18, right: 10),
                              child: Text("lbl_aim_s_of_ncc".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium20)),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: getHorizontalSize(379.00),
                                  margin: getMargin(top: 14, right: 1),
                                  child: Text("msg_to_develop_char".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular15))),
                          Padding(
                              padding: getPadding(top: 62, right: 10),
                              child: Text("msg_ncc_symbol_insi".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium20)),
                          Container(
                              width: getHorizontalSize(381.00),
                              margin: getMargin(top: 14),
                              child: Text("msg_it_is_the_ncc_c".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular15)),
                          Padding(
                              padding: getPadding(top: 14, right: 10),
                              child: Text("msg_age_limit_for_a".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium20)),
                          Container(
                              width: getHorizontalSize(381.00),
                              margin: getMargin(top: 14),
                              child: Text("msg_for_jd_jw_cadet".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular15)),
                          Padding(
                              padding: getPadding(top: 14, right: 10),
                              child: Text("msg_types_of_camps".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium20)),
                          Container(
                              width: getHorizontalSize(381.00),
                              margin: getMargin(top: 14),
                              child: Text("msg_a_annual_trai".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular15)),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Text("msg_activities_in_n".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium20)),
                          Container(
                              width: getHorizontalSize(381.00),
                              margin: getMargin(top: 32),
                              child: Text("msg_a_institution".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular15))
                        ])))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
