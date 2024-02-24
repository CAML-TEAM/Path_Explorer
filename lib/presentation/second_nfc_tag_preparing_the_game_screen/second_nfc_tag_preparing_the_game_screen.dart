import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_image.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_leading_image.dart';
import 'package:pathexplorers/widgets/app_bar/custom_app_bar.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'package:pathexplorers/widgets/custom_icon_button.dart';
import 'bloc/second_nfc_tag_preparing_the_game_bloc.dart';
import 'models/second_nfc_tag_preparing_the_game_model.dart';

class SecondNfcTagPreparingTheGameScreen extends StatelessWidget {
  const SecondNfcTagPreparingTheGameScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SecondNfcTagPreparingTheGameBloc>(
        create: (context) => SecondNfcTagPreparingTheGameBloc(
            SecondNfcTagPreparingTheGameState(
                secondNfcTagPreparingTheGameModelObj:
                    SecondNfcTagPreparingTheGameModel()))
          ..add(SecondNfcTagPreparingTheGameInitialEvent()),
        child: SecondNfcTagPreparingTheGameScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SecondNfcTagPreparingTheGameBloc,
        SecondNfcTagPreparingTheGameState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBarSection(context),
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
                                alignment: Alignment.bottomLeft,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgImage22768x375,
                                      height: 768.v,
                                      width: 375.h,
                                      alignment: Alignment.center),
                                  _buildGoSection(context)
                                ]))),
                    Opacity(
                        opacity: 0.03,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgVectorPurpleA400,
                            height: 357.v,
                            width: 346.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 36.v))),
                    _buildTaskSection(context)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBarSection(BuildContext context) {
    return CustomAppBar(
        height: 52.v,
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClosePrimary,
            margin: EdgeInsets.only(left: 18.h, top: 10.v, bottom: 7.v),
            onTap: () {
              onTapClose(context);
            }),
        actions: [
          GestureDetector(
              onTap: () {
                onTapNounHome1998078(context);
              },
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v),
                  decoration: AppDecoration.outlinePrimary,
                  child: Column(children: [
                    SizedBox(height: 1.v),
                    AppbarImage(
                        imagePath: ImageConstant.imgHome,
                        margin: EdgeInsets.only(left: 1.h))
                  ])))
        ]);
  }

  /// Section Widget
  Widget _buildGoSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 25.h, right: 48.h, bottom: 88.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: Text("lbl_station_1".tr,
                          style: CustomTextStyles.displayMediumPrimary)),
                  SizedBox(height: 14.v),
                  Text("msg_you_have_successfully".tr,
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.only(right: 36.h),
                      child: Text("msg_prepare_for_a_quiz".tr,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 51.v),
                  CustomElevatedButton(
                      height: 60.v,
                      width: 144.h,
                      text: "lbl_go".tr,
                      margin: EdgeInsets.only(right: 66.h),
                      buttonStyle: CustomButtonStyles.outlineGreenTL20,
                      buttonTextStyle: CustomTextStyles.titleMediumBold18,
                      onPressed: () {
                        onTapGo(context);
                      })
                ])));
  }

  /// Section Widget
  Widget _buildTaskSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 383.v,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 17.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgTask),
                    fit: BoxFit.cover)),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgStar5,
                  height: 166.v,
                  width: 170.h,
                  radius: BorderRadius.circular(15.h),
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 160.adaptSize,
                      width: 160.adaptSize,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgStar8,
                            height: 160.adaptSize,
                            width: 160.adaptSize,
                            radius: BorderRadius.circular(1.h),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 120.adaptSize,
                                width: 120.adaptSize,
                                margin: EdgeInsets.only(top: 16.v),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgGroup556,
                                          height: 34.v,
                                          width: 68.h,
                                          alignment: Alignment.bottomCenter),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 120.adaptSize,
                                              width: 120.adaptSize,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgStar9,
                                                        height: 120.adaptSize,
                                                        width: 120.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(18.h),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            height:
                                                                80.adaptSize,
                                                            width: 80.adaptSize,
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgStar10,
                                                                      height: 80
                                                                          .adaptSize,
                                                                      width: 80
                                                                          .adaptSize,
                                                                      radius: BorderRadius
                                                                          .circular(18
                                                                              .h),
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  CustomIconButton(
                                                                      height: 33
                                                                          .adaptSize,
                                                                      width: 33
                                                                          .adaptSize,
                                                                      padding: EdgeInsets
                                                                          .all(6
                                                                              .h),
                                                                      decoration:
                                                                          IconButtonStyleHelper
                                                                              .gradientAmberToAmber,
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgGroup560))
                                                                ])))
                                                  ])))
                                    ])))
                      ])))
            ])));
  }

  /// Navigates to the previous screen.
  onTapClose(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapNounHome1998078(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the quizQuestionBeforeAnsweringScreen when the action is triggered.
  onTapGo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.quizQuestionBeforeAnsweringScreen,
    );
  }
}
