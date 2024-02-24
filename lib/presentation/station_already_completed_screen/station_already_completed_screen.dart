import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_leading_image.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_trailing_image.dart';
import 'package:pathexplorers/widgets/app_bar/custom_app_bar.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'bloc/station_already_completed_bloc.dart';
import 'models/station_already_completed_model.dart';

class StationAlreadyCompletedScreen extends StatelessWidget {
  const StationAlreadyCompletedScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<StationAlreadyCompletedBloc>(
        create: (context) => StationAlreadyCompletedBloc(
            StationAlreadyCompletedState(
                stationAlreadyCompletedModelObj:
                    StationAlreadyCompletedModel()))
          ..add(StationAlreadyCompletedInitialEvent()),
        child: StationAlreadyCompletedScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StationAlreadyCompletedBloc,
        StationAlreadyCompletedState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  height: 768.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 768.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgImage22768x375,
                                      height: 768.v,
                                      width: 375.h,
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              30.h, 12.v, 22.h, 82.v),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                _buildAppBar(context),
                                                Spacer(),
                                                Container(
                                                    width: 300.h,
                                                    margin: EdgeInsets.only(
                                                        left: 7.h, right: 14.h),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text:
                                                                  "msg_you_have_already2"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .headlineMediumff00082e),
                                                          TextSpan(
                                                              text:
                                                                  "lbl_completed"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .headlineMediumff5fe85c),
                                                          TextSpan(
                                                              text:
                                                                  "lbl_this_station"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .headlineMediumff00082e)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.center)),
                                                SizedBox(height: 65.v),
                                                CustomElevatedButton(
                                                    height: 60.v,
                                                    text: "lbl_try_again".tr,
                                                    margin: EdgeInsets.only(
                                                        left: 33.h,
                                                        right: 39.h),
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .outlineTeal,
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .titleMediumGray5001Bold,
                                                    onPressed: () {
                                                      onTapTryAgain(context);
                                                    })
                                              ])))
                                ]))),
                    _buildTask(context)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClosePrimary,
            margin: EdgeInsets.only(left: 30.h, top: 5.v),
            onTap: () {
              onTapClose(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHome,
              margin: EdgeInsets.only(left: 22.h, right: 22.h, bottom: 12.v),
              onTap: () {
                onTapHome(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildTask(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
            margin: EdgeInsets.only(top: 36.v, right: 28.h),
            padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 42.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgGroup46),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 12.v),
                  Container(
                      height: 260.v,
                      width: 316.h,
                      padding: EdgeInsets.symmetric(vertical: 43.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgTaskCyan300),
                              fit: BoxFit.cover)),
                      child: Stack(alignment: Alignment.topCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgStar52,
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
                                              ImageConstant.imgStar8160x160,
                                          height: 160.adaptSize,
                                          width: 160.adaptSize,
                                          radius: BorderRadius.circular(1.h),
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgMedalGray5001,
                                          height: 97.v,
                                          width: 80.h,
                                          alignment: Alignment.center)
                                    ])))
                      ]))
                ])));
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

  /// Navigates to the secondNfcTagPreparingTheGameScreen when the action is triggered.
  onTapTryAgain(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.secondNfcTagPreparingTheGameScreen,
    );
  }
}
