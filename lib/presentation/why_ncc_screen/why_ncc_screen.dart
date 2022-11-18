import 'controller/why_ncc_controller.dart';
import 'package:flutter/material.dart';
import 'package:ncc/core/app_export.dart';
import 'package:ncc/widgets/app_bar/appbar_image.dart';
import 'package:ncc/widgets/app_bar/custom_app_bar.dart';

class WhyNccScreen extends GetWidget<WhyNccController> {
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
                    onTap: onTapArrowleft1),
                title: Padding(
                    padding: getPadding(left: 12, top: 67, bottom: 17),
                    child: Text("lbl_why_ncc".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium20)),
                styleType: Style.bgFillBlue50),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(left: 12, top: 21, right: 9),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 4),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgImage7,
                                        height: getVerticalSize(204.00),
                                        width: getHorizontalSize(187.00))),
                                Container(
                                    width: getHorizontalSize(200.00),
                                    margin: getMargin(top: 10),
                                    child: Text("msg_ncc_develops_in".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular15))
                              ]),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: getHorizontalSize(404.00),
                                  margin: getMargin(top: 13, right: 2),
                                  child: Text("msg_the_main_benefi".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular15))),
                          Padding(
                              padding: getPadding(top: 21, right: 10),
                              child: Text("lbl_a_certificate".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium20)),
                          Container(
                              width: getHorizontalSize(407.00),
                              margin: getMargin(top: 14),
                              child: Text("msg_ncc_a_certifi".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular15)),
                          Padding(
                              padding: getPadding(top: 13, right: 10),
                              child: Text("lbl_b_certificate".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium20)),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: getHorizontalSize(401.00),
                                  margin: getMargin(top: 14, right: 5),
                                  child: Text("msg_a_candidate_ach".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular15))),
                          Padding(
                              padding: getPadding(top: 103, right: 10),
                              child: Text("lbl_c_certificate".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium20)),
                          Container(
                              width: getHorizontalSize(407.00),
                              margin: getMargin(top: 14),
                              child: Text("msg_to_get_the_c".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular15))
                        ])))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
