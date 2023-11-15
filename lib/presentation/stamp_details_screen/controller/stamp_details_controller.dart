import 'package:jiitak_demo/core/app_export.dart';
import 'package:jiitak_demo/presentation/stamp_details_screen/models/stamp_details_model.dart';

/// A controller class for the StampDetailsScreen.
///
/// This class manages the state of the StampDetailsScreen, including the
/// current stampDetailsModelObj
class StampDetailsController extends GetxController {
  Rx<StampDetailsModel> stampDetailsModelObj = StampDetailsModel().obs;
}
