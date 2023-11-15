import '../home_after_selected_prefecture_and_city_page/widgets/homeafterselected_item_widget.dart';
import 'controller/home_after_selected_prefecture_and_city_controller.dart';
import 'models/home_after_selected_prefecture_and_city_model.dart';
import 'models/homeafterselected_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jiitak_demo/core/app_export.dart';
import 'package:jiitak_demo/widgets/app_bar/appbar_title_edittext.dart';
import 'package:jiitak_demo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jiitak_demo/widgets/app_bar/custom_app_bar.dart';
import 'package:jiitak_demo/widgets/custom_elevated_button.dart';

class HomeAfterSelectedPrefectureAndCityPage extends StatelessWidget {
  HomeAfterSelectedPrefectureAndCityPage({Key? key})
      : super(
          key: key,
        );

  HomeAfterSelectedPrefectureAndCityController controller = Get.put(
      HomeAfterSelectedPrefectureAndCityController(
          HomeAfterSelectedPrefectureAndCityModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildButton2022526(),
              SizedBox(height: 24.v),
              _buildFrame(),
              SizedBox(height: 24.v),
              _buildHomeAfterSelected(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleEdittext(
        margin: EdgeInsets.only(left: 24.h),
        hintText: "lbl".tr,
        controller: controller.whereDoYouWorkController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFilterIcon,
          margin: EdgeInsets.only(
            left: 13.h,
            top: 9.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVector,
          margin: EdgeInsets.fromLTRB(10.h, 12.v, 39.h, 3.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildButton2022526() {
    return CustomElevatedButton(
      text: "lbl_2022_5_26".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientYellowToPrimaryDecoration,
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 25.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildColumn(),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: _buildColumn(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: _buildColumn(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: _buildColumn(),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 6.h),
              child: IntrinsicWidth(
                child: Container(
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder9,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 9.v,
                          bottom: 6.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text(
                                "lbl6".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_30".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 67.v,
                        width: 44.h,
                        margin: EdgeInsets.only(left: 117.h),
                        decoration: BoxDecoration(
                          color: appTheme.gray50,
                          borderRadius: BorderRadius.circular(
                            9.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: _buildColumn(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: _buildColumn(),
            ),
            Container(
              height: 67.v,
              width: 1.h,
              margin: EdgeInsets.only(left: 6.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeAfterSelected() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 17.h,
        ),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: controller.homeAfterSelectedPrefectureAndCityModelObj
                .value.homeafterselectedItemList.value.length,
            itemBuilder: (context, index) {
              HomeafterselectedItemModel model = controller
                  .homeAfterSelectedPrefectureAndCityModelObj
                  .value
                  .homeafterselectedItemList
                  .value[index];
              return HomeafterselectedItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildColumn() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            "lbl3".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 1.v),
          Text(
            "lbl_27".tr,
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
