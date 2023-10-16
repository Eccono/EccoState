import 'package:eccostate/core/app_export.dart';import 'package:eccostate/presentation/home_container_screen/models/home_container_model.dart';import 'package:eccostate/widgets/custom_bottom_bar.dart';class HomeContainerController extends GetxController {var id = Get.arguments[NavigationArgs.id];

var token = Get.arguments[NavigationArgs.token];

Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
@override void onInit() {  } 
 }
