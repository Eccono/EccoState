import 'package:eccostate/core/app_export.dart';import 'package:eccostate/presentation/home_search_page/models/home_search_model.dart';import 'package:flutter/material.dart';class HomeSearchController extends GetxController {HomeSearchController(this.homeSearchModelObj);

TextEditingController searchController = TextEditingController();

Rx<HomeSearchModel> homeSearchModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
