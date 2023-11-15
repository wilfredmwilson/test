import '../stamp_details_screen/widgets/stampdetails_item_widget.dart';
import 'controller/stamp_details_controller.dart';
import 'models/stampdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jiitak_demo/core/app_export.dart';
import 'package:jiitak_demo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:jiitak_demo/widgets/app_bar/appbar_subtitle.dart';
import 'package:jiitak_demo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jiitak_demo/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class StampDetailsScreen extends GetWidget<StampDetailsController> {
  const StampDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigoA100,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 10.v),
            child: Column(
              children: [
                _buildSeventySeven(),
                SizedBox(height: 24.v),
                Container(
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL22,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 33.v),
                      _buildFrameSeventyNine(),
                      SizedBox(height: 6.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 36.h),
                          child: Text(
                            "lbl_2_2".tr,
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl19".tr,
                          style: CustomTextStyles.titleSmallPrimaryContainer,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_2021_11_18".tr,
                          style: CustomTextStyles.bodySmallGray40001,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      _buildStampDetails(),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_2021_11_17".tr,
                          style: CustomTextStyles.bodySmallGray40001,
                        ),
                      ),
                      SizedBox(height: 64.v),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_2021_11_16".tr,
                          style: CustomTextStyles.bodySmallGray40001,
                        ),
                      ),
                      SizedBox(height: 64.v),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_2021_11_13".tr,
                          style: CustomTextStyles.bodySmallGray40001,
                        ),
                      ),
                      SizedBox(height: 64.v),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_2021_11_12".tr,
                          style: CustomTextStyles.bodySmallGray40001,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl20".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 40.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGroup11,
        margin: EdgeInsets.only(left: 16.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl16".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMinusCircle,
          margin: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 8.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeventySeven() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_mer".tr,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl17".tr,
              style: CustomTextStyles.bodyMediumOnPrimaryContainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "lbl_302".tr,
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 11.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl18".tr,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSeventyNine() {
    return SizedBox(
      height: 199.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle31,
            height: 100.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 29.h),
              child: IntrinsicWidth(
                child: Container(
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 150.v,
                        width: 277.h,
                        margin: EdgeInsets.symmetric(vertical: 24.v),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildEleven(
                                    checkmarkImage: ImageConstant.imgCheckmark,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: _buildEleven(
                                      checkmarkImage: ImageConstant
                                          .imgCheckmarkOnprimarycontainer,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: _buildEleven(
                                      checkmarkImage: ImageConstant
                                          .imgCheckmarkOnprimarycontainer,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: _buildEleven(
                                      checkmarkImage: ImageConstant
                                          .imgCheckmarkOnprimarycontainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 150.v,
                                width: 277.h,
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 54.v),
                                      child: _buildCheckmark1(),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildCheckmark(),
                                          SizedBox(height: 28.v),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15.h),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgCheckmarkOnprimarycontainer8x12,
                                                    height: 8.v,
                                                    width: 12.h,
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgCheckmarkOnprimarycontainer8x12,
                                                    height: 8.v,
                                                    width: 12.h,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 29.v),
                                          _buildCheckmark(),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          _buildCheckmark(),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 16.h),
                                            child: _buildCheckmark(),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.h),
                                            child: _buildCheckmark(),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 16.h),
                                            child: _buildCheckmark(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 199.v,
                        width: 317.h,
                        margin: EdgeInsets.only(left: 27.h),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 199.v,
                                width: 317.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(
                                    14.h,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: appTheme.black90019,
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(
                                        0,
                                        4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 25.v,
                                  right: 20.h,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildCheckmark(),
                                    Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: _buildEleven(
                                        checkmarkImage:
                                            ImageConstant.imgCheckmark,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: _buildEleven(
                                        checkmarkImage: ImageConstant
                                            .imgCheckmarkOnprimarycontainer,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: _buildEleven(
                                        checkmarkImage: ImageConstant
                                            .imgCheckmarkOnprimarycontainer,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: _buildEleven(
                                        checkmarkImage: ImageConstant
                                            .imgCheckmarkOnprimarycontainer,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 354.h),
              child: IntrinsicWidth(
                child: Container(
                  height: 199.v,
                  width: 317.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 19.h,
                    vertical: 23.v,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      _buildCheckmark1(),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 133.v,
                          width: 42.h,
                          margin: EdgeInsets.only(top: 1.v),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildCheckmark(),
                            Padding(
                              padding: EdgeInsets.only(left: 192.h),
                              child: _buildCheckmark(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 60.h),
                        child: _buildCheckmark(),
                      ),
                      _buildCheckmark(),
                      Padding(
                        padding: EdgeInsets.only(right: 58.h),
                        child: _buildCheckmark(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStampDetails() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0.v),
                child: SizedBox(
                  width: 343.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray300,
                  ),
                ),
              );
            },
            itemCount: controller
                .stampDetailsModelObj.value.stampdetailsItemList.value.length,
            itemBuilder: (context, index) {
              StampdetailsItemModel model = controller
                  .stampDetailsModelObj.value.stampdetailsItemList.value[index];
              return StampdetailsItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildEleven({required String checkmarkImage}) {
    return SizedBox(
      height: 42.adaptSize,
      width: 42.adaptSize,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStar3,
            height: 42.adaptSize,
            width: 42.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: checkmarkImage,
            height: 22.adaptSize,
            width: 22.adaptSize,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 8.v),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCheckmark() {
    return SizedBox(
      height: 42.adaptSize,
      width: 42.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStar11,
            height: 42.adaptSize,
            width: 42.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkOnprimarycontainer8x12,
            height: 8.v,
            width: 12.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCheckmark1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgStar642x42,
          height: 42.adaptSize,
          width: 42.adaptSize,
          radius: BorderRadius.circular(
            4.h,
          ),
          margin: EdgeInsets.only(bottom: 54.v),
        ),
        Container(
          height: 42.adaptSize,
          width: 42.adaptSize,
          margin: EdgeInsets.only(
            left: 15.h,
            bottom: 54.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStar742x42,
                height: 42.adaptSize,
                width: 42.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 22.adaptSize,
                width: 22.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        Container(
          height: 42.adaptSize,
          width: 42.adaptSize,
          margin: EdgeInsets.only(
            left: 15.h,
            bottom: 54.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStar842x42,
                height: 42.adaptSize,
                width: 42.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOnprimarycontainer,
                height: 22.adaptSize,
                width: 22.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        Container(
          height: 42.adaptSize,
          width: 42.adaptSize,
          margin: EdgeInsets.only(
            left: 15.h,
            bottom: 54.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStar942x42,
                height: 42.adaptSize,
                width: 42.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOnprimarycontainer,
                height: 22.adaptSize,
                width: 22.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        Container(
          height: 42.adaptSize,
          width: 42.adaptSize,
          margin: EdgeInsets.only(
            left: 15.h,
            bottom: 54.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStar1042x42,
                height: 42.adaptSize,
                width: 42.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOnprimarycontainer22x22,
                height: 22.adaptSize,
                width: 22.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
