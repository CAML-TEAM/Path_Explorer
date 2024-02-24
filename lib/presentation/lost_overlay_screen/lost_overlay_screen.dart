import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_leading_image.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_trailing_image.dart';
import 'package:pathexplorers/widgets/app_bar/custom_app_bar.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'package:pathexplorers/widgets/custom_outlined_button.dart';
import 'bloc/lost_overlay_bloc.dart';
import 'models/lost_overlay_model.dart';

class LostOverlayScreen extends StatelessWidget {
  const LostOverlayScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LostOverlayBloc>(
        create: (context) => LostOverlayBloc(
            LostOverlayState(lostOverlayModelObj: LostOverlayModel()))
          ..add(LostOverlayInitialEvent()),
        child: LostOverlayScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LostOverlayBloc, LostOverlayState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  height: 768.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage22768x375,
                        height: 768.v,
                        width: 375.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 17.v),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildAppBar(context),
                                  SizedBox(height: 6.v),
                                  _buildImageStack(context),
                                  SizedBox(height: 47.v),
                                  Text("lbl_oh_snap".tr,
                                      style: CustomTextStyles
                                          .displayMediumPinkA20001),
                                  SizedBox(height: 12.v),
                                  Text("msg_we_ve_lost_this".tr,
                                      style: theme.textTheme.bodyLarge),
                                  SizedBox(height: 28.v),
                                  CustomElevatedButton(
                                      width: 147.h,
                                      text: "lbl_12".tr,
                                      leftIcon: Container(
                                          margin: EdgeInsets.only(right: 30.h),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgIconlyBoldProfileCyan300,
                                              height: 16.adaptSize,
                                              width: 16.adaptSize)),
                                      buttonStyle:
                                          CustomButtonStyles.outlineGray,
                                      buttonTextStyle:
                                          CustomTextStyles.titleMediumBold),
                                  SizedBox(height: 50.v),
                                  CustomOutlinedButton(
                                      width: 250.h,
                                      text: "lbl_well_then".tr,
                                      onPressed: () {
                                        onTapWellThen(context);
                                      }),
                                  SizedBox(height: 65.v)
                                ])))
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 35.v,
        leadingWidth: 68.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClosePrimary,
            margin: EdgeInsets.only(left: 33.h),
            onTap: () {
              onTapClose(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHome,
              margin: EdgeInsets.only(left: 27.h, right: 27.h, bottom: 6.v),
              onTap: () {
                onTapHome(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildImageStack(BuildContext context) {
    return Container(
        height: 315.v,
        width: 336.h,
        padding: EdgeInsets.only(top: 64.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup34),
                fit: BoxFit.cover)),
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgStar51,
              height: 166.v,
              width: 170.h,
              radius: BorderRadius.circular(15.h),
              alignment: Alignment.topCenter),
          CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 80.adaptSize,
              width: 80.adaptSize,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 43.v))
        ]));
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
  onTapWellThen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }
}
