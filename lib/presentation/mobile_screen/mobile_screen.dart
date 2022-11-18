import 'controller/mobile_controller.dart';
import 'package:flutter/material.dart';
import 'package:ncc/core/app_export.dart';
import 'package:ncc/widgets/custom_button.dart';
import 'package:ncc/widgets/custom_drop_down.dart';
import 'package:ncc/widgets/custom_text_form_field.dart';

class MobileScreen extends GetWidget<MobileController> {
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
                    padding: getPadding(
                      left: 24,
                      top: 96,
                      right: 24,
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgImage5,
                      height: getVerticalSize(
                        186.00,
                      ),
                      width: getHorizontalSize(
                        259.00,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 73,
                      right: 24,
                    ),
                    child: Text(
                      "msg_signin_with_mob".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOutfitSemiBold24,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: getMargin(
                      top: 35,
                    ),
                    decoration: AppDecoration.fillBluegray50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 24,
                            top: 16,
                            bottom: 46,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgLock,
                            height: getSize(
                              24.00,
                            ),
                            width: getSize(
                              24.00,
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            287.00,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 20,
                            bottom: 16,
                          ),
                          child: Text(
                            "msg_we_take_privacy".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular13.copyWith(
                              height: 1.38,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 23,
                      right: 24,
                    ),
                    child: Text(
                      "msg_enter_your_phon".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 32,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomDropDown(
                          width: 80,
                          focusNode: FocusNode(),
                          icon: Container(
                            margin: getMargin(
                              left: 22,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgIcon,
                            ),
                          ),
                          hintText: "lbl_1".tr,
                          items:
                              controller.mobileModelObj.value.dropdownItemList,
                          onChanged: (value) {
                            controller.onSelected(value);
                          },
                        ),
                        CustomTextFormField(
                          width: 284,
                          focusNode: FocusNode(),
                          controller: controller.inputController,
                          hintText: "lbl_555_555_1234".tr,
                          margin: getMargin(
                            left: 16,
                            top: 12,
                          ),
                          textInputAction: TextInputAction.done,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: getHorizontalSize(
                      359.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 23,
                      right: 24,
                    ),
                    child: Text(
                      "msg_you_will_receiv".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular16.copyWith(
                        height: 1.25,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 17,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CommonImageView(
                          svgPath: ImageConstant.imgCheckmark,
                          height: getSize(
                            32.00,
                          ),
                          width: getSize(
                            32.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 8,
                            bottom: 4,
                          ),
                          child: Text(
                            "lbl_i_agree_with".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular16Black900.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 7,
                            bottom: 9,
                          ),
                          child: Text(
                            "lbl_terms_of_use".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium16.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton(
                  width: 380,
                  text: "lbl_get_otp".tr,
                  margin: getMargin(
                    left: 24,
                    top: 28,
                    right: 24,
                    bottom: 5,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
