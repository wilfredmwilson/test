import 'package:jiitak_demo/core/app_export.dart';
import 'package:jiitak_demo/presentation/home_after_selected_prefecture_and_city_page/models/home_after_selected_prefecture_and_city_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeAfterSelectedPrefectureAndCityPage.
///
/// This class manages the state of the HomeAfterSelectedPrefectureAndCityPage, including the
/// current homeAfterSelectedPrefectureAndCityModelObj
class HomeAfterSelectedPrefectureAndCityController extends GetxController {
  HomeAfterSelectedPrefectureAndCityController(
      this.homeAfterSelectedPrefectureAndCityModelObj);

  TextEditingController whereDoYouWorkController = TextEditingController();

  Rx<HomeAfterSelectedPrefectureAndCityModel>
      homeAfterSelectedPrefectureAndCityModelObj;

  @override
  void onClose() {
    super.onClose();
    whereDoYouWorkController.dispose();
  }
}
