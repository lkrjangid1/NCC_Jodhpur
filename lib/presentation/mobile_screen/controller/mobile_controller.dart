import 'package:ncc/core/app_export.dart';
import 'package:ncc/presentation/mobile_screen/models/mobile_model.dart';
import 'package:flutter/material.dart';

class MobileController extends GetxController {
  TextEditingController inputController = TextEditingController();

  Rx<MobileModel> mobileModelObj = MobileModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    mobileModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    mobileModelObj.value.dropdownItemList.refresh();
  }
}
