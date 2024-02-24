import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_leading_image.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_trailing_image.dart';
import 'package:pathexplorers/widgets/app_bar/custom_app_bar.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'package:pathexplorers/widgets/custom_outlined_button.dart';
import 'bloc/first_nfc_tag_bloc.dart';
import 'models/first_nfc_tag_model.dart';

class FirstNfcTagScreen extends StatelessWidget {
  const FirstNfcTagScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FirstNfcTagBloc>(
        create: (context) => FirstNfcTagBloc(
            FirstNfcTagState(firstNfcTagModelObj: FirstNfcTagModel()))
          ..add(FirstNfcTagInitialEvent()),
        child: FirstNfcTagScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstNfcTagBloc, FirstNfcTagState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.h, vertical: 19.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFrame96,
                        height: 180.v,
                        width: 332.h),
                    SizedBox(height: 7.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 65.h),
                            child: Text("msg_the_pavilion_building".tr,
                                style:
                                    CustomTextStyles.titleMediumBlack90002))),
                    SizedBox(height: 26.v),
                    _buildFirstNfcTagShowHint(context),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildHome(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 55.v,
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClosePrimary,
            margin: EdgeInsets.only(left: 18.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapClose(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHome,
              margin: EdgeInsets.fromLTRB(22.h, 12.v, 22.h, 14.v),
              onTap: () {
                onTapHome(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildFirstNfcTagShowHint(BuildContext context) {
    return SizedBox(
        height: 302.v,
        width: 303.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  width: 303.h,
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_step_into_the_pavilion2".tr,
                            style: CustomTextStyles.bodyLargeff000000),
                        TextSpan(
                            text: "lbl_learn_more".tr,
                            style: CustomTextStyles.bodyLargeffe6005b)
                      ]),
                      textAlign: TextAlign.center))),
          CustomElevatedButton(
              height: 37.v,
              width: 108.h,
              text: "lbl_show_hint".tr,
              buttonStyle: CustomButtonStyles.outlineGreen,
              buttonTextStyle: CustomTextStyles.titleMediumGray5001Bold,
              onPressed: () {
                onTapShowHint(context);
              },
              alignment: Alignment.bottomCenter),
          CustomImageView(
              imagePath: ImageConstant.imgVectorBlack90002,
              height: 117.v,
              width: 106.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 13.h, bottom: 4.v))
        ]));
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return CustomOutlinedButton(
        width: 250.h,
        text: "lbl_home".tr,
        margin: EdgeInsets.only(left: 63.h, right: 62.h, bottom: 42.v),
        buttonStyle: CustomButtonStyles.outlineOnPrimary);
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
  onTapShowHint(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.secondNfcTagPreparingTheGameScreen,
    );
  }
}
