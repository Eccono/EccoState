import '../notification_screen/widgets/listchartline_item_widget.dart';import '../notification_screen/widgets/listhome_item_widget.dart';import 'controller/notification_controller.dart';import 'models/listchartline_item_model.dart';import 'models/listhome_item_model.dart';import 'package:eccostate/core/app_export.dart';import 'package:eccostate/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:eccostate/widgets/app_bar/appbar_subtitle.dart';import 'package:eccostate/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class NotificationScreen extends GetWidget<NotificationController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 64, leading: AppbarIconbutton1(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24), onTap: () {onTapArrowleft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_notification".tr)), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 35, right: 24, bottom: 35), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_today".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeBold16.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 15), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(14));}, itemCount: controller.notificationModelObj.value.listhomeItemList.value.length, itemBuilder: (context, index) {ListhomeItemModel model = controller.notificationModelObj.value.listhomeItemList.value[index]; return ListhomeItemWidget(model);}))), Padding(padding: getPadding(top: 22), child: Text("lbl_this_week".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeBold16.copyWith(letterSpacing: getHorizontalSize(0.2)))), Padding(padding: getPadding(top: 17), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(14));}, itemCount: controller.notificationModelObj.value.listchartlineItemList.value.length, itemBuilder: (context, index) {ListchartlineItemModel model = controller.notificationModelObj.value.listchartlineItemList.value[index]; return ListchartlineItemWidget(model);})))])))); } 
onTapArrowleft() { Get.back(); } 
 }
