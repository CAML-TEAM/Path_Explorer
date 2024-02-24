import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_leading_image.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_trailing_image.dart';
import 'package:pathexplorers/widgets/app_bar/custom_app_bar.dart';
import 'package:pathexplorers/widgets/custom_outlined_button.dart';
import 'bloc/finished_game_has_end_bloc.dart';
import 'models/finished_game_has_end_model.dart';

class FinishedGameHasEndScreen extends StatelessWidget {
  const FinishedGameHasEndScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FinishedGameHasEndBloc>(
        create: (context) => FinishedGameHasEndBloc(FinishedGameHasEndState(
            finishedGameHasEndModelObj: FinishedGameHasEndModel()))
          ..add(FinishedGameHasEndInitialEvent()),
        child: FinishedGameHasEndScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FinishedGameHasEndBloc, FinishedGameHasEndState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  height: 768.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage22760x371,
                        height: 760.v,
                        width: 371.h,
                        alignment: Alignment.center),
                    Opacity(
                        opacity: 0.03,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgVectorPurpleA400,
                            height: 357.v,
                            width: 346.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 36.v))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 82.v),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Spacer(),
                                  Text("lbl_finished".tr,
                                      style: CustomTextStyles
                                          .displayMediumOnPrimary),
                                  SizedBox(height: 31.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          width: 204.h,
                                          margin: EdgeInsets.only(left: 19.h),
                                          child: Text("msg_you_have_won_at".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: theme.textTheme.bodyLarge!
                                                  .copyWith(height: 1.50)))),
                                  SizedBox(height: 29.v),
                                  CustomOutlinedButton(
                                      width: 250.h,
                                      text: "lbl_home".tr,
                                      onPressed: () {
                                        onTapHome1(context);
                                      })
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgConfetti,
                        height: 383.v,
                        width: 375.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 17.v)),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 768.v,
                            width: double.maxFinite,
                            padding: EdgeInsets.only(top: 122.v),
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgStar53,
                                      height: 166.v,
                                      width: 170.h,
                                      radius: BorderRadius.circular(15.h),
                                      alignment: Alignment.topCenter),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          height: 160.adaptSize,
                                          width: 160.adaptSize,
                                          margin: EdgeInsets.only(top: 3.v),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgStar91,
                                                    height: 160.adaptSize,
                                                    width: 160.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                            1.h),
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup540,
                                                    height: 80.v,
                                                    width: 85.h,
                                                    alignment: Alignment.center)
                                              ])))
                                ])))
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClosePrimary,
            margin: EdgeInsets.only(left: 27.h, top: 18.v, bottom: 715.v),
            onTap: () {
              onTapClose(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHome,
              margin: EdgeInsets.fromLTRB(34.h, 22.v, 34.h, 717.v),
              onTap: () {
                onTapHome(context);
              })
        ]);
  }

  /// Navigates to the previous screen.
  onTapClose(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapHome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapHome1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }
}
