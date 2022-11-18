import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:ncc/core/app_export.dart';
import 'package:ncc/domain/googleauth/google_auth_helper.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
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
                              height: getVerticalSize(314.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: CommonImageView(
                                            imagePath: ImageConstant.imgVector,
                                            height: getVerticalSize(314.00),
                                            width: getHorizontalSize(428.00))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: getVerticalSize(227.00),
                                            width: getHorizontalSize(220.00),
                                            margin: getMargin(
                                                left: 95,
                                                top: 12,
                                                right: 95,
                                                bottom: 12),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgVectorIndigo50,
                                                          height:
                                                              getVerticalSize(
                                                                  227.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  220.00))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 32,
                                                              top: 17,
                                                              right: 32,
                                                              bottom: 17),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgVector175x155,
                                                              height:
                                                                  getVerticalSize(
                                                                      175.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      155.00))))
                                                ])))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 26, top: 148, right: 26),
                          child: Text("lbl_welcome_back".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSenRegular24)),
                      Container(
                          width: getHorizontalSize(269.00),
                          margin: getMargin(left: 26, top: 12, right: 26),
                          child: Text("msg_long_time_no_se".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRobotoRomanLight20
                                  .copyWith(height: 2.00))),
                      GestureDetector(
                          onTap: () {
                            onTapRowgoogle();
                          },
                          child: Container(
                              margin: getMargin(left: 26, top: 110, right: 26),
                              decoration: AppDecoration.fillBlue50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 21, top: 20, bottom: 21),
                                        child: InkWell(
                                            onTap: () {
                                              onTapImgGoogle();
                                            },
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgGoogle,
                                                height: getVerticalSize(23.00),
                                                width:
                                                    getHorizontalSize(22.00)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 45, top: 21, bottom: 20),
                                        child: Text("msg_continue_with_g".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoMedium20
                                                .copyWith(letterSpacing: 0.40)))
                                  ]))),
                      Container(
                          margin: getMargin(
                              left: 26, top: 29, right: 26, bottom: 90),
                          decoration: AppDecoration.outlineBlue50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 21, bottom: 20),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgCall,
                                        height: getVerticalSize(23.00),
                                        width: getHorizontalSize(22.00))),
                                Padding(
                                    padding: getPadding(
                                        left: 47, top: 21, bottom: 24),
                                    child: Text("msg_continue_with_m".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoMedium20
                                            .copyWith(letterSpacing: 0.40)))
                              ]))
                    ])))));
  }

  onTapRowgoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogle() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
