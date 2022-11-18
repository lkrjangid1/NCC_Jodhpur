import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:ncc/core/app_export.dart';

class HomeScreen extends GetWidget<HomeController> {
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.fillBlue50,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 145,
                                            top: 64,
                                            right: 143,
                                            bottom: 17),
                                        child: Text("lbl_ncc_jodhpur".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSenRegular20))
                                  ]))),
                      Container(
                          height: getVerticalSize(237.00),
                          width: getHorizontalSize(393.00),
                          margin: getMargin(left: 18, top: 16, right: 17),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(5.00)),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgImage2,
                                        height: getVerticalSize(237.00),
                                        width: getHorizontalSize(393.00),
                                        fit: BoxFit.cover))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 18, top: 36, right: 18),
                                    child: Text("lbl_ncc".tr,
                                        overflow: TextOverflow.ellipsis,
                                        style: AppStyle.txtInterExtraLight)))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 18, top: 36, right: 18),
                              child: Text("lbl_ncc".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight16))),
                      GestureDetector(
                          onTap: () {
                            onTapRowaboutncc();
                          },
                          child: Padding(
                              padding: getPadding(left: 18, top: 15, right: 17),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("lbl_about_ncc".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium20),
                                    Padding(
                                        padding: getPadding(top: 2, bottom: 1),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getVerticalSize(20.00),
                                            width: getHorizontalSize(19.00)))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapRowwhyncc();
                          },
                          child: Padding(
                              padding: getPadding(left: 18, top: 17, right: 17),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("lbl_why_ncc".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium20),
                                    Padding(
                                        padding: getPadding(top: 2, bottom: 1),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getVerticalSize(20.00),
                                            width: getHorizontalSize(19.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 18, top: 30, right: 18),
                              child: Text("lbl_unites".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight16))),
                      Padding(
                          padding: getPadding(left: 18, top: 15, right: 17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("lbl_mbm".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium20),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 1),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(20.00),
                                        width: getHorizontalSize(19.00)))
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 18, top: 17, right: 17, bottom: 308),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("lbl_gcp".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium20),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 1),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(20.00),
                                        width: getHorizontalSize(19.00)))
                              ]))
                    ])))));
  }

  onTapRowaboutncc() {
    Get.toNamed(AppRoutes.aboutScreen);
  }

  onTapRowwhyncc() {
    Get.toNamed(AppRoutes.whyNccScreen);
  }
}
