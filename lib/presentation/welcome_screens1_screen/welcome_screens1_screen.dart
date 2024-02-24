import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'bloc/welcome_screens1_bloc.dart';
import 'models/welcome_screens1_model.dart';

class WelcomeScreens1Screen extends StatelessWidget {
  const WelcomeScreens1Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeScreens1Bloc>(
        create: (context) => WelcomeScreens1Bloc(WelcomeScreens1State(
            welcomeScreens1ModelObj: WelcomeScreens1Model()))
          ..add(WelcomeScreens1InitialEvent()),
        child: WelcomeScreens1Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeScreens1Bloc, WelcomeScreens1State>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.pink200,
              body: SizedBox(
                  height: 768.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSaly24,
                        height: 377.v,
                        width: 375.h,
                        alignment: Alignment.topCenter),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 26.h, top: 50.v, right: 26.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 273.v,
                                      width: 296.h,
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 91.h,
                                                            vertical: 52.v),
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: fs.Svg(
                                                                ImageConstant
                                                                    .imgVector),
                                                            fit: BoxFit.cover)),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          SizedBox(
                                                              height: 19.v),
                                                          Container(
                                                              height: 150.v,
                                                              width: 90.h,
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .gray200))
                                                        ]))),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSubtract203x103,
                                                height: 203.v,
                                                width: 103.h,
                                                alignment: Alignment.topRight,
                                                margin: EdgeInsets.only(
                                                    top: 13.v, right: 87.h))
                                          ])),
                                  SizedBox(height: 44.v),
                                  Container(
                                      height: 22.v,
                                      width: 91.h,
                                      margin: EdgeInsets.only(left: 105.h),
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
                                              ]))),
                                  SizedBox(height: 3.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("lbl_pathexplorers".tr,
                                          style:
                                              theme.textTheme.displayMedium)),
                                  SizedBox(height: 29.v),
                                  SizedBox(
                                      width: 322.h,
                                      child: Text("msg_start_your_journey".tr,
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodyLargeBlack90002
                                              .copyWith(height: 1.50))),
                                  SizedBox(height: 29.v),
                                  CustomElevatedButton(
                                      height: 60.v,
                                      text: "lbl_get_started".tr,
                                      margin: EdgeInsets.only(
                                          left: 36.h, right: 35.h),
                                      buttonStyle:
                                          CustomButtonStyles.outlineRedC,
                                      buttonTextStyle: CustomTextStyles
                                          .titleMediumGray5001Bold,
                                      onPressed: () {
                                        onTapGetStarted(context);
                                      },
                                      alignment: Alignment.center)
                                ])))
                  ]))));
    });
  }

  /// Navigates to the welcomeScreens2Screen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomeScreens2Screen,
    );
  }
}
