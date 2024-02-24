import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/app_bar/custom_app_bar.dart';
import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  height: 779.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 779.v,
                            width: 371.h,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage22,
                                      height: 779.v,
                                      width: 371.h,
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 101.v),
                                          child: Text(
                                              "msg_joined_4_feb_2024"
                                                  .tr
                                                  .toUpperCase(),
                                              style: CustomTextStyles
                                                  .labelLargeRubikOnPrimaryBold)))
                                ]))),
                    _buildRecentOrders(context),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(top: 257.v),
                            child: Text("lbl_your_progress".tr.toUpperCase(),
                                style: CustomTextStyles
                                    .labelLargeRubikOnPrimary))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 67.h, bottom: 263.v),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconlyBoldProfile,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 6.h, top: 2.v, bottom: 2.v),
                                  child: Text("lbl_visited".tr,
                                      style:
                                          CustomTextStyles.bodyLargeOnPrimary))
                            ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 320.v),
                            child: Text("lbl_goal".tr.toUpperCase(),
                                style: CustomTextStyles
                                    .labelLargeRubikOnPrimary))),
                    _buildFiftyTwo(context),
                    _buildDoctorReviews(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 10.h),
            padding: EdgeInsets.symmetric(vertical: 12.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgGroup57),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(height: 28.v, actions: [
                    Container(
                        height: 28.v,
                        width: 27.h,
                        margin: EdgeInsets.symmetric(horizontal: 23.h),
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgShape,
                              height: 28.v,
                              width: 27.h,
                              alignment: Alignment.center),
                          CustomImageView(
                              imagePath: ImageConstant.imgShapePrimary,
                              height: 28.v,
                              width: 27.h,
                              alignment: Alignment.center)
                        ]))
                  ]),
                  SizedBox(height: 18.v),
                  Container(
                      height: 215.v,
                      width: 321.h,
                      margin: EdgeInsets.only(left: 6.h),
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                margin: EdgeInsets.only(left: 10.h),
                                padding: EdgeInsets.symmetric(horizontal: 70.h),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgGroup58),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          height: 11.adaptSize,
                                          width: 11.adaptSize,
                                          decoration: BoxDecoration(
                                              color: theme.colorScheme.primary,
                                              borderRadius:
                                                  BorderRadius.circular(5.h))),
                                      SizedBox(height: 14.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 52.h),
                                          child: Text("lbl_manal".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBold18)),
                                      SizedBox(height: 6.v),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTry(context);
                                          },
                                          child: Container(
                                              height: 23.v,
                                              width: 128.h,
                                              margin:
                                                  EdgeInsets.only(right: 14.h),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Container(
                                                            height: 21.v,
                                                            width: 128.h,
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.h),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: appTheme
                                                                          .teal40033,
                                                                      spreadRadius:
                                                                          2.h,
                                                                      blurRadius:
                                                                          2.h,
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              10))
                                                                ]))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Text(
                                                            "lbl_edit_profile"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleMediumGray5001Bold))
                                                  ]))),
                                      SizedBox(height: 75.v)
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse1,
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            radius: BorderRadius.circular(40.h),
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 3.v, right: 109.h)),
                        CustomImageView(
                            imagePath: ImageConstant.imgMaterialSymbol,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            alignment: Alignment.topLeft)
                      ])),
                  SizedBox(height: 10.v)
                ])));
  }

  /// Section Widget
  Widget _buildFiftyTwo(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.fromLTRB(44.h, 475.v, 28.h, 242.v),
            padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 3.v),
            decoration: AppDecoration.outlineBlack90002
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Row(children: [
              Opacity(
                  opacity: 0.1,
                  child: Container(
                      height: 51.v,
                      width: 142.h,
                      decoration: BoxDecoration(
                          color: appTheme.pinkA20001.withOpacity(0.39),
                          borderRadius: BorderRadius.circular(20.h)))),
              Padding(
                  padding: EdgeInsets.only(left: 39.h, top: 5.v, bottom: 6.v),
                  child: Text("lbl_0_of_5".tr,
                      style: theme.textTheme.headlineMedium))
            ])));
  }

  /// Section Widget
  Widget _buildDoctorReviews(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 282.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                      height: 120.v,
                      width: 147.h,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4.h, vertical: 10.v),
                                decoration: AppDecoration.outlineGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 50.v,
                                          width: 137.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.cyan50,
                                              borderRadius:
                                                  BorderRadius.circular(20.h))),
                                      SizedBox(height: 6.v),
                                      Text("lbl_0_of_5".tr,
                                          style:
                                              theme.textTheme.headlineMedium),
                                      SizedBox(height: 4.v)
                                    ]))),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 33.h, top: 24.v),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFrame2,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 8.h, top: 5.v),
                                      child: Text("lbl_tags".tr,
                                          style: CustomTextStyles
                                              .bodyLargeOnPrimary))
                                ])))
                      ])),
                  Container(
                      margin: EdgeInsets.only(left: 9.h),
                      padding: EdgeInsets.all(5.h),
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Container(
                            width: 137.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 37.h, vertical: 12.v),
                            decoration: AppDecoration.fillLightGreen.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgClose,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(bottom: 2.v)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 3.v, bottom: 2.v),
                                      child: Text("lbl_won".tr,
                                          style: CustomTextStyles
                                              .bodyLargeOnPrimary))
                                ])),
                        SizedBox(height: 11.v),
                        Text("lbl_0".tr, style: theme.textTheme.headlineMedium),
                        SizedBox(height: 9.v)
                      ]))
                ])));
  }

  /// Navigates to the profile1Screen when the action is triggered.
  onTapTry(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profile1Screen,
    );
  }
}
