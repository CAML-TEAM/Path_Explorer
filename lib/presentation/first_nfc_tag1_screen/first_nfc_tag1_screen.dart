import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_leading_image.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_trailing_image.dart';
import 'package:pathexplorers/widgets/app_bar/custom_app_bar.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'package:pathexplorers/widgets/custom_outlined_button.dart';
import 'bloc/first_nfc_tag1_bloc.dart';
import 'models/first_nfc_tag1_model.dart';

class FirstNfcTag1Screen extends StatelessWidget {
  const FirstNfcTag1Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FirstNfcTag1Bloc>(
        create: (context) => FirstNfcTag1Bloc(
            FirstNfcTag1State(firstNfcTag1ModelObj: FirstNfcTag1Model()))
          ..add(FirstNfcTag1InitialEvent()),
        child: FirstNfcTag1Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstNfcTag1Bloc, FirstNfcTag1State>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  height: 768.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
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
                                              7.h, 10.v, 7.h, 42.v),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                _buildAppBar(context),
                                                SizedBox(height: 29.v),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFrame96,
                                                    height: 180.v,
                                                    width: 332.h),
                                                SizedBox(height: 7.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 78.h),
                                                        child: Text(
                                                            "msg_the_pavilion_building"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleMediumBlack90002))),
                                                SizedBox(height: 15.v),
                                                _buildSettingsStack(context),
                                                Spacer(),
                                                CustomOutlinedButton(
                                                    width: 250.h,
                                                    text: "lbl_home".tr)
                                              ])))
                                ]))),
                    _buildFrameNinetySeven(context)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 35.v,
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClosePrimary,
            margin: EdgeInsets.only(left: 18.h),
            onTap: () {
              onTapClose(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHome,
              margin: EdgeInsets.fromLTRB(22.h, 2.v, 22.h, 4.v))
        ]);
  }

  /// Section Widget
  Widget _buildSettingsStack(BuildContext context) {
    return SizedBox(
        height: 196.v,
        width: 359.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSettingsBlack9000246x37,
              height: 46.v,
              width: 37.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 93.h)),
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  width: 359.h,
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_step_into_the_pavilion2".tr,
                            style: CustomTextStyles.bodyLargeff000000),
                        TextSpan(
                            text: "lbl_learn_more".tr,
                            style: CustomTextStyles.bodyLargeffe6005b)
                      ]),
                      textAlign: TextAlign.center)))
        ]));
  }

  /// Section Widget
  Widget _buildFrameNinetySeven(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(right: 1.h, bottom: 140.v),
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 15.v),
            decoration: AppDecoration.fillGray300,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                      height: 37.v,
                      width: 108.h,
                      text: "lbl_show_hint".tr,
                      buttonStyle: CustomButtonStyles.outlineGreen,
                      buttonTextStyle: CustomTextStyles.titleMediumGray5001Bold,
                      onPressed: () {
                        onTapShowHint(context);
                      }),
                  SizedBox(height: 14.v),
                  SizedBox(
                      width: 336.h,
                      child: Text("msg_where_mind_meets".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumBlack90002_1
                              .copyWith(height: 1.50)))
                ])));
  }

  /// Navigates to the previous screen.
  onTapClose(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the secondNfcTagPreparingTheGameScreen when the action is triggered.
  onTapShowHint(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.secondNfcTagPreparingTheGameScreen,
    );
  }
}
