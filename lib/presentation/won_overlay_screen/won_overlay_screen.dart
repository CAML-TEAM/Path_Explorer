import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_leading_image.dart';
import 'package:pathexplorers/widgets/app_bar/appbar_trailing_image.dart';
import 'package:pathexplorers/widgets/app_bar/custom_app_bar.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'package:pathexplorers/widgets/custom_text_form_field.dart';
import 'bloc/won_overlay_bloc.dart';
import 'models/won_overlay_model.dart';

class WonOverlayScreen extends StatelessWidget {
  const WonOverlayScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WonOverlayBloc>(
        create: (context) => WonOverlayBloc(
            WonOverlayState(wonOverlayModelObj: WonOverlayModel()))
          ..add(WonOverlayInitialEvent()),
        child: WonOverlayScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
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
                      child: Text("lbl_you_won".tr,
                          style: CustomTextStyles.displayMediumGreen400)),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.h, vertical: 82.v),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                Text("msg_this_station_is".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 27.v),
                                _buildStatusRow(context),
                                SizedBox(height: 50.v),
                                CustomElevatedButton(
                                    height: 60.v,
                                    text: "lbl_cool".tr,
                                    margin: EdgeInsets.only(
                                        left: 38.h, right: 37.h),
                                    buttonStyle:
                                        CustomButtonStyles.outlineGreenTL20,
                                    buttonTextStyle:
                                        CustomTextStyles.titleMediumBold18,
                                    onPressed: () {
                                      onTapCool(context);
                                    })
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 768.v,
                          width: double.maxFinite,
                          padding: EdgeInsets.only(top: 122.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(ImageConstant.imgTaskGreen400),
                                  fit: BoxFit.cover)),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Opacity(
                                opacity: 0.7,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgStar5166x170,
                                    height: 166.v,
                                    width: 170.h,
                                    radius: BorderRadius.circular(15.h),
                                    alignment: Alignment.topCenter)),
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
                                                  ImageConstant.imgStar9160x160,
                                              height: 160.adaptSize,
                                              width: 160.adaptSize,
                                              radius:
                                                  BorderRadius.circular(1.h),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgMedal,
                                              height: 104.v,
                                              width: 80.h,
                                              alignment: Alignment.center)
                                        ])))
                          ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 37.h, vertical: 55.v),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 7.adaptSize,
                                    width: 7.adaptSize,
                                    margin: EdgeInsets.only(left: 111.h),
                                    decoration: BoxDecoration(
                                        color: appTheme.cyan300,
                                        borderRadius:
                                            BorderRadius.circular(3.h))),
                                SizedBox(height: 23.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 15.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector11,
                                              height: 52.v,
                                              width: 50.h,
                                              margin:
                                                  EdgeInsets.only(top: 27.v)),
                                          Spacer(flex: 28),
                                          Container(
                                              height: 19.adaptSize,
                                              width: 19.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 18.v, bottom: 41.v),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          9.h),
                                                  border: Border.all(
                                                      color: appTheme.green400,
                                                      width: 5.h))),
                                          Spacer(flex: 50),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSettings,
                                              height: 26.v,
                                              width: 31.h,
                                              margin: EdgeInsets.only(
                                                  bottom: 52.v)),
                                          Spacer(flex: 20),
                                          Container(
                                              height: 19.adaptSize,
                                              width: 19.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 50.v, bottom: 10.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.cyan300,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          9.h)))
                                        ])),
                                SizedBox(height: 9.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: 10.adaptSize,
                                        width: 10.adaptSize,
                                        margin: EdgeInsets.only(right: 50.h),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.h),
                                            gradient: LinearGradient(
                                                begin: Alignment(0, 0.5),
                                                end: Alignment(1, 0.5),
                                                colors: [
                                                  appTheme.pinkA20001,
                                                  appTheme.deepOrange400
                                                ])))),
                                SizedBox(height: 47.v),
                                Container(
                                    height: 11.adaptSize,
                                    width: 11.adaptSize,
                                    margin: EdgeInsets.only(left: 27.h),
                                    decoration: BoxDecoration(
                                        color: appTheme.cyan300,
                                        borderRadius:
                                            BorderRadius.circular(5.h))),
                                SizedBox(height: 10.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.h, right: 39.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              height: 21.adaptSize,
                                              width: 21.adaptSize,
                                              decoration: BoxDecoration(
                                                  color: appTheme.cyan300,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.h))),
                                          Container(
                                              height: 21.adaptSize,
                                              width: 21.adaptSize,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.h),
                                                  border: Border.all(
                                                      color: appTheme.cyan300,
                                                      width: 5.h)))
                                        ])),
                                SizedBox(height: 29.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 49.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: 19.adaptSize,
                                                  width: 19.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      bottom: 58.v),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              9.h),
                                                      border: Border.all(
                                                          color: appTheme
                                                              .yellow500,
                                                          width: 5.h))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgVector12,
                                                  height: 77.v,
                                                  width: 58.h,
                                                  margin: EdgeInsets.only(
                                                      left: 66.h))
                                            ]))),
                                SizedBox(height: 29.v)
                              ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgClosePrimary,
            margin: EdgeInsets.only(left: 23.h, top: 9.v, bottom: 724.v),
            onTap: () {
              onTapClose(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHome,
              margin: EdgeInsets.fromLTRB(22.h, 12.v, 22.h, 727.v),
              onTap: () {
                onTapHome(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildStatusRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 147.h,
              padding: EdgeInsets.all(5.h),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                BlocSelector<WonOverlayBloc, WonOverlayState,
                        TextEditingController?>(
                    selector: (state) => state.statusController,
                    builder: (context, statusController) {
                      return CustomTextFormField(
                          width: 90.h,
                          controller: statusController,
                          hintText: "lbl_visited".tr,
                          hintStyle: theme.textTheme.bodySmall!,
                          prefix: Container(
                              margin: EdgeInsets.fromLTRB(12.h, 6.v, 4.h, 6.v),
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconlyBoldProfileCyan300,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 30.v),
                          contentPadding: EdgeInsets.only(
                              top: 7.v, right: 19.h, bottom: 7.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.outlineGrayTL15,
                          fillColor: appTheme.cyan300);
                    }),
                Padding(
                    padding: EdgeInsets.only(left: 13.h, top: 4.v, bottom: 6.v),
                    child: Text("lbl_1".tr,
                        style: CustomTextStyles.titleMediumBold))
              ])),
          Container(
              width: 147.h,
              margin: EdgeInsets.only(left: 9.h),
              padding: EdgeInsets.symmetric(vertical: 5.v),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BlocSelector<WonOverlayBloc, WonOverlayState,
                            TextEditingController?>(
                        selector: (state) => state.resultController,
                        builder: (context, resultController) {
                          return CustomTextFormField(
                              width: 90.h,
                              controller: resultController,
                              hintText: "lbl_won".tr,
                              hintStyle: theme.textTheme.bodySmall!,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(12.h, 5.v, 4.h, 5.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgClose,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 30.v),
                              contentPadding: EdgeInsets.only(
                                  top: 7.v, right: 30.h, bottom: 7.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlineGrayTL151,
                              fillColor: appTheme.green400);
                        }),
                    Padding(
                        padding: EdgeInsets.only(top: 6.v, bottom: 4.v),
                        child: Text("lbl_50".tr,
                            style: CustomTextStyles.titleMediumBold))
                  ]))
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
  onTapCool(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }
}
