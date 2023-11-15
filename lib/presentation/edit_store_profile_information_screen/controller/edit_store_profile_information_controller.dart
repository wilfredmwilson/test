import 'package:jiitak_demo/core/app_export.dart';
import 'package:jiitak_demo/presentation/edit_store_profile_information_screen/models/edit_store_profile_information_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EditStoreProfileInformationScreen.
///
/// This class manages the state of the EditStoreProfileInformationScreen, including the
/// current editStoreProfileInformationModelObj
class EditStoreProfileInformationController extends GetxController {
  TextEditingController inputController = TextEditingController();

  TextEditingController inputController1 = TextEditingController();

  TextEditingController inputController2 = TextEditingController();

  TextEditingController inputController3 = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  TextEditingController inputController4 = TextEditingController();

  TextEditingController inputController5 = TextEditingController();

  TextEditingController inputController6 = TextEditingController();

  Rx<EditStoreProfileInformationModel> editStoreProfileInformationModelObj =
      EditStoreProfileInformationModel().obs;

  Rx<bool> smokingSeatRow = false.obs;

  Rx<bool> parkingRow = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  SelectionPopupModel? selectedDropDownValue4;

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
    inputController1.dispose();
    inputController2.dispose();
    inputController3.dispose();
    priceController.dispose();
    priceController1.dispose();
    inputController4.dispose();
    inputController5.dispose();
    inputController6.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in editStoreProfileInformationModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    editStoreProfileInformationModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in editStoreProfileInformationModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    editStoreProfileInformationModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element
        in editStoreProfileInformationModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    editStoreProfileInformationModelObj.value.dropdownItemList2.refresh();
  }

  onSelected3(dynamic value) {
    for (var element
        in editStoreProfileInformationModelObj.value.dropdownItemList3.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    editStoreProfileInformationModelObj.value.dropdownItemList3.refresh();
  }

  onSelected4(dynamic value) {
    for (var element
        in editStoreProfileInformationModelObj.value.dropdownItemList4.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    editStoreProfileInformationModelObj.value.dropdownItemList4.refresh();
  }
}
