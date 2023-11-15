import '../controller/edit_store_profile_information_controller.dart';
import '../models/photolist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jiitak_demo/core/app_export.dart';

// ignore: must_be_immutable
class PhotolistItemWidget extends StatelessWidget {
  PhotolistItemWidget(
    this.photolistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PhotolistItemModel photolistItemModelObj;

  var controller = Get.find<EditStoreProfileInformationController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 91.v,
      width: 92.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: photolistItemModelObj.widget!.value,
              height: 91.adaptSize,
              width: 91.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: photolistItemModelObj.close!.value,
              height: 14.adaptSize,
              width: 14.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 8.v,
                right: 8.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
