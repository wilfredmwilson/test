import '../controller/stamp_details_controller.dart';
import '../models/stampdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jiitak_demo/core/app_export.dart';

// ignore: must_be_immutable
class StampdetailsItemWidget extends StatelessWidget {
  StampdetailsItemWidget(
    this.stampdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StampdetailsItemModel stampdetailsItemModelObj;

  var controller = Get.find<StampDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => Text(
              stampdetailsItemModelObj.widget!.value,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Obx(
            () => Text(
              stampdetailsItemModelObj.one!.value,
              style: CustomTextStyles.titleSmallPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
