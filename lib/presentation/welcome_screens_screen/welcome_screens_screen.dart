import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'bloc/welcome_screens_bloc.dart';
import 'models/welcome_screens_model.dart';

class WelcomeScreensScreen extends StatelessWidget {
  const WelcomeScreensScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeScreensBloc>(
        create: (context) => WelcomeScreensBloc(
            WelcomeScreensState(welcomeScreensModelObj: WelcomeScreensModel()))
          ..add(WelcomeScreensInitialEvent()),
        child: WelcomeScreensScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeScreensBloc, WelcomeScreensState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.pink200,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(
                        height: 409.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 273.v,
                              width: 296.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 30.h, top: 50.v)),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 409.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgSaly24,
                                            height: 409.v,
                                            width: 375.h,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: 192.v,
                                                width: 102.h,
                                                margin:
                                                    EdgeInsets.only(top: 94.v),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                              height: 150.v,
                                                              width: 90.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 8.v),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .gray200))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgSubtract,
                                                          height: 192.v,
                                                          width: 102.h,
                                                          alignment:
                                                              Alignment.center)
                                                    ])))
                                      ])))
                        ])),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 22.v,
                            width: 91.h,
                            margin: EdgeInsets.only(left: 133.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(10.h)),
                                gradient: LinearGradient(
                                    begin: Alignment(0.48, 0.07),
                                    end: Alignment(0.48, 1),
                                    colors: [
                                      appTheme.red200,
                                      appTheme.redA100,
                                      appTheme.red300
                                    ])))),
                    SizedBox(height: 37.v),
                    Text("lbl_pathexplorers".tr,
                        style: theme.textTheme.displayMedium),
                    SizedBox(height: 5.v),
                    Container(
                        width: 293.h,
                        margin: EdgeInsets.only(left: 48.h, right: 34.h),
                        decoration: AppDecoration.outlineBlack,
                        child: Text("msg_unlock_your_campus".tr,
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyLargeBlack90002
                                .copyWith(height: 1.50))),
                    SizedBox(height: 46.v),
                    CustomElevatedButton(
                        height: 60.v,
                        width: 250.h,
                        text: "lbl_get_started".tr,
                        buttonStyle: CustomButtonStyles.outlineRedC,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumGray5001Bold,
                        onPressed: () {
                          onTapGetStarted(context);
                        }),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Navigates to the welcomeScreens1Screen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomeScreens1Screen,
    );
  }
}
