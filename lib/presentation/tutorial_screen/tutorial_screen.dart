import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/app_bar/custom_app_bar.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'package:pathexplorers/widgets/custom_icon_button.dart';
import 'bloc/tutorial_bloc.dart';
import 'models/tutorial_model.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TutorialBloc>(
        create: (context) =>
            TutorialBloc(TutorialState(tutorialModelObj: TutorialModel()))
              ..add(TutorialInitialEvent()),
        child: TutorialScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorialBloc, TutorialState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray50,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildWelcomeBackSarina(context),
                        SizedBox(height: 7.v),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 26.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMaterialSymbol,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 5.v, bottom: 3.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 69.h),
                                        child: Text("lbl_tutorial".tr,
                                            style:
                                                theme.textTheme.headlineLarge))
                                  ])),
                              SizedBox(height: 16.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          left: 21.h, right: 26.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14.h, vertical: 10.v),
                                      decoration: AppDecoration.fillGray100
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder15),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                                width: 297.h,
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "msg_welcome_to_campus2"
                                                                  .tr,
                                                          style: CustomTextStyles
                                                              .labelLargeBold),
                                                      TextSpan(
                                                          text:
                                                              "msg_your_adventure_starts"
                                                                  .tr,
                                                          style: theme.textTheme
                                                              .bodyMedium),
                                                      TextSpan(
                                                          text:
                                                              "msg_quick_start_guide"
                                                                  .tr,
                                                          style: theme.textTheme
                                                              .labelLarge),
                                                      TextSpan(
                                                          text:
                                                              "msg_map_overview_open"
                                                                  .tr,
                                                          style: theme.textTheme
                                                              .bodyMedium),
                                                      TextSpan(
                                                          text: "lbl_tips".tr,
                                                          style: theme.textTheme
                                                              .labelLarge),
                                                      TextSpan(
                                                          text:
                                                              "msg_make_sure_nfc_is"
                                                                  .tr,
                                                          style: theme.textTheme
                                                              .bodyMedium),
                                                      TextSpan(
                                                          text:
                                                              "msg_ready_set_go_hit"
                                                                  .tr,
                                                          style: theme.textTheme
                                                              .labelLarge)
                                                    ]),
                                                    textAlign: TextAlign.left)),
                                            SizedBox(height: 10.v),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 19.h),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text:
                                                                  "lbl_good".tr,
                                                              style: CustomTextStyles
                                                                  .titleMediumff00082e),
                                                          TextSpan(text: " "),
                                                          TextSpan(
                                                              text:
                                                                  "lbl_luck".tr,
                                                              style: CustomTextStyles
                                                                  .titleMediumff00082e),
                                                          TextSpan(text: " "),
                                                          TextSpan(
                                                              text:
                                                                  "msg_for_your_hunting"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .titleMediumff00082e)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left))),
                                            SizedBox(height: 3.v),
                                            CustomElevatedButton(
                                                height: 32.v,
                                                width: 120.h,
                                                text: "lbl_start".tr,
                                                buttonStyle: CustomButtonStyles
                                                    .outlineTealTL16,
                                                buttonTextStyle: CustomTextStyles
                                                    .titleMediumGray5001Bold,
                                                onPressed: () {
                                                  onTapStart(context);
                                                }),
                                            SizedBox(height: 20.v)
                                          ]))),
                              SizedBox(height: 8.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 7.v,
                                  width: 12.h,
                                  margin: EdgeInsets.only(left: 138.h)),
                              _buildBottomNavigation(context)
                            ])))
                      ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildWelcomeBackSarina(BuildContext context) {
    return SizedBox(
        height: 81.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_good_afternoon".tr,
                            style: CustomTextStyles
                                .headlineMediumEpilogueff371b34),
                        TextSpan(
                            text: "lbl".tr,
                            style: CustomTextStyles
                                .headlineMediumEpilogueff371b34SemiBold),
                        TextSpan(
                            text: "lbl_sarina".tr,
                            style: CustomTextStyles
                                .headlineMediumEpilogueff371b34Bold)
                      ]),
                      textAlign: TextAlign.left))),
          CustomAppBar(height: 81.v),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle41,
              height: 57.v,
              width: 370.h,
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 35.v,
                  width: 332.h,
                  margin: EdgeInsets.only(bottom: 11.v),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse2,
                                  height: 35.adaptSize,
                                  width: 35.adaptSize,
                                  radius: BorderRadius.circular(17.h)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 2.v, bottom: 19.v),
                                  child: Text("lbl_3".tr,
                                      style: CustomTextStyles
                                          .bodySmallEpilogueGray50))
                            ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgHome,
                        height: 28.v,
                        width: 27.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 15.h),
                        onTap: () {
                          onTapImgHome(context);
                        })
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return Container(
        height: 85.v,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 10.v),
        decoration: AppDecoration.fillGray300,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgHomeBlack90002,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            margin: EdgeInsets.only(top: 13.v, bottom: 11.v),
                            onTap: () {
                              onTapImgHome1(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgClock,
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            margin: EdgeInsets.only(left: 49.h, bottom: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 49.h, top: 1.v),
                            child: CustomIconButton(
                                height: 52.adaptSize,
                                width: 52.adaptSize,
                                padding: EdgeInsets.all(3.h),
                                onTap: () {
                                  onTapBtnSettings(context);
                                },
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSettingsGray300))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 25.h, top: 1.v, bottom: 1.v),
                            child: CustomIconButton(
                                height: 51.v,
                                width: 50.h,
                                padding: EdgeInsets.all(13.h),
                                onTap: () {
                                  onTapBtnSearch(context);
                                },
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgSearch)))
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 101.h),
                  child: Text("lbl_tutorial".tr,
                      style: CustomTextStyles.bodyLargeManropeBlack90002))),
          Align(
              alignment: Alignment.bottomRight,
              child: Text("lbl_settings".tr,
                  style: CustomTextStyles.bodyLargeManropeBlack90002)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text("lbl_home".tr,
                      style: CustomTextStyles.bodyLargeManropeBlack90002))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 95.h),
                  child: Text("lbl_profile".tr,
                      style: CustomTextStyles.bodyLargeManropeBlack90002)))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            boxShadow: [
              BoxShadow(
                  color: appTheme.black90002.withOpacity(0.11),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(0, 4))
            ]),
        child: Padding(
            padding: EdgeInsets.fromLTRB(21.h, 11.v, 46.h, 22.v),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIconsNavigation,
                  height: 52.v,
                  width: 236.h),
              CustomImageView(
                  imagePath: ImageConstant.imgCogSolid1,
                  height: 39.adaptSize,
                  width: 39.adaptSize,
                  margin: EdgeInsets.only(left: 30.h, top: 8.v, bottom: 5.v))
            ])));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgHome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the firstNfcTagScreen when the action is triggered.
  onTapStart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.firstNfcTagScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgHome1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapBtnSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapBtnSearch(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }
}
