import 'package:eccostate/core/app_export.dart';
import 'package:eccostate/presentation/my_home_empty_screen/models/my_home_empty_model.dart';
import 'package:eccostate/widgets/custom_bottom_bar.dart';

class MyHomeEmptyController extends GetxController {
  Rx<MyHomeEmptyModel> myHomeEmptyModelObj = MyHomeEmptyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
