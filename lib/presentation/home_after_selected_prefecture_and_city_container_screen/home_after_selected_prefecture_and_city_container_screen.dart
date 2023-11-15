import 'controller/home_after_selected_prefecture_and_city_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:jiitak_demo/core/app_export.dart';
import 'package:jiitak_demo/presentation/home_after_selected_prefecture_and_city_page/home_after_selected_prefecture_and_city_page.dart';
import 'package:jiitak_demo/widgets/custom_bottom_app_bar.dart';

class HomeAfterSelectedPrefectureAndCityContainerScreen
    extends GetWidget<HomeAfterSelectedPrefectureAndCityContainerController> {
  const HomeAfterSelectedPrefectureAndCityContainerScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homeAfterSelectedPrefectureAndCityPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomAppBar(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildBottomAppBar() {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.tf:
        return AppRoutes.homeAfterSelectedPrefectureAndCityPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeAfterSelectedPrefectureAndCityPage:
        return HomeAfterSelectedPrefectureAndCityPage();
      default:
        return DefaultWidget();
    }
  }
}
