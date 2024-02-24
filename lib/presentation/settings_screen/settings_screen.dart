import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_leading_image.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_trailing_image.dart';
import 'package:pathexplorers/widgets/app_bar/custom_app_bar.dart';
import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: 389.h,
                  child: Column(children: [
                    _buildHeader(context),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                margin: EdgeInsets.only(bottom: 5.v),
                                padding: EdgeInsets.symmetric(horizontal: 15.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMaterialSymbol,
                                                    height: 30.adaptSize,
                                                    width: 30.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        bottom: 6.v)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 91.h, top: 6.v),
                                                    child: Text(
                                                        "lbl_settings".tr,
                                                        style: CustomTextStyles
                                                            .headlineSmallInter))
                                              ])),
                                      SizedBox(height: 78.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 18.h),
                                          child: Text("lbl_account".tr,
                                              style: CustomTextStyles
                                                  .titleMediumInterBlack90002)),
                                      SizedBox(height: 35.v),
                                      _buildAccount(context),
                                      SizedBox(height: 39.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 11.h),
                                          child: Text("lbl_support_about".tr,
                                              style: CustomTextStyles
                                                  .titleMediumInterBlack90002)),
                                      SizedBox(height: 31.v),
                                      _buildSupportAbout(context),
                                      SizedBox(height: 9.v),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 18.h, right: 8.h),
                                          child: _buildDeleteAccount(context,
                                              deleteButtonText:
                                                  "lbl_log_out".tr)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 18.h, right: 8.h),
                                          child: _buildDeleteAccount(context,
                                              deleteButtonText:
                                                  "lbl_delete_account".tr))
                                    ]))))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return SizedBox(
        height: 85.v,
        width: 389.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.h, vertical: 24.v),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse2,
                            height: 35.adaptSize,
                            width: 35.adaptSize,
                            radius: BorderRadius.circular(17.h),
                            margin: EdgeInsets.only(bottom: 2.v)),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgHome,
                            height: 28.v,
                            width: 27.h,
                            margin: EdgeInsets.only(top: 2.v, bottom: 5.v),
                            onTap: () {
                              onTapImgHome(context);
                            }),
                        Padding(
                            padding: EdgeInsets.fromLTRB(11.h, 2.v, 15.h, 21.v),
                            child: Text("lbl_3".tr,
                                style:
                                    CustomTextStyles.bodySmallEpilogueGray50))
                      ]))),
          CustomAppBar(
              height: 31.v,
              leadingWidth: 59.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.img941,
                  margin: EdgeInsets.only(left: 26.h)),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgSettingsGray800,
                    margin: EdgeInsets.only(left: 15.h, right: 1.h)),
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgSettingsBlack90002,
                    margin: EdgeInsets.only(left: 4.h, right: 1.h)),
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgTelevision,
                    margin: EdgeInsets.only(left: 4.h, right: 16.h))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildAccount(BuildContext context) {
    return Container(
        width: 342.h,
        margin: EdgeInsets.only(right: 17.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
        decoration: AppDecoration.fillSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 70.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgIconamoonProfileLight,
                        height: 30.adaptSize,
                        width: 30.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 36.h, top: 6.v, bottom: 3.v),
                        child: Text("msg_change_colour_theme".tr,
                            style: CustomTextStyles.titleMediumInterBlack90002))
                  ])),
              SizedBox(height: 9.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgMaterialSymbolGray80001,
                    height: 30.adaptSize,
                    width: 30.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 36.h, top: 6.v, bottom: 3.v),
                    child: Text("msg_adjust_text_size".tr,
                        style: CustomTextStyles.titleMediumInterBlack90002))
              ]),
              SizedBox(height: 9.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgIconamoonNotification,
                    height: 30.adaptSize,
                    width: 30.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 36.h, top: 4.v, bottom: 5.v),
                    child: Text("lbl_notifications".tr,
                        style: CustomTextStyles.titleMediumInterBlack90002))
              ]),
              SizedBox(height: 9.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgIcOutlineLock,
                    height: 30.adaptSize,
                    width: 30.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 36.h, top: 6.v, bottom: 3.v),
                    child: Text("lbl_privacy".tr,
                        style: CustomTextStyles.titleMediumInterBlack90002))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildSupportAbout(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            width: 335.h,
            margin: EdgeInsets.only(left: 7.h, right: 17.h),
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.v),
            decoration: AppDecoration.fillSecondaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    CustomImageView(
                        imagePath:
                            ImageConstant.imgMaterialSymbolGray8000131x30,
                        height: 31.v,
                        width: 30.h),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 35.h, top: 5.v, bottom: 6.v),
                        child: Text("lbl_give_feedback".tr,
                            style: CustomTextStyles.titleMediumInterBlack90002))
                  ]),
                  SizedBox(height: 9.v),
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMdiQuestionMa,
                        height: 31.v,
                        width: 30.h),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 36.h, top: 7.v, bottom: 4.v),
                        child: Text("lbl_help_support".tr,
                            style: CustomTextStyles.titleMediumInterBlack90002))
                  ]),
                  SizedBox(height: 9.v),
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgTablerCircleLetterI,
                        height: 31.v,
                        width: 30.h),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 36.h, top: 5.v, bottom: 6.v),
                        child: Text("msg_terms_and_policies".tr,
                            style: CustomTextStyles.titleMediumInterBlack90002))
                  ]),
                  SizedBox(height: 28.v)
                ])));
  }

  /// Common widget
  Widget _buildDeleteAccount(
    BuildContext context, {
    required String deleteButtonText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgMdiLogout,
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(bottom: 4.v)),
          Spacer(flex: 26),
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
              child: Text(deleteButtonText,
                  style: CustomTextStyles.titleMediumInterBlack90002
                      .copyWith(color: appTheme.black90002))),
          Spacer(flex: 73),
          Container(
              height: 36.v,
              width: 42.h,
              padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 6.v),
              decoration: AppDecoration.outlineGrayC
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMaximize,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center))
        ]);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgHome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
