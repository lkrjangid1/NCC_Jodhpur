import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:ncc/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(
                                      left: 40, top: 40, right: 40, bottom: 5),
                                  child: CommonImageView(
                                      imagePath: ImageConstant.imgImage1,
                                      height: getVerticalSize(154.00),
                                      width: getHorizontalSize(130.00))))
                        ]))))));
  }
}
