import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'bloc/welcome_screens2_bloc.dart';
import 'models/welcome_screens2_model.dart';

class WelcomeScreens2Screen extends StatelessWidget {
  const WelcomeScreens2Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeScreens2Bloc>(
        create: (context) => WelcomeScreens2Bloc(WelcomeScreens2State(
            welcomeScreens2ModelObj: WelcomeScreens2Model()))
          ..add(WelcomeScreens2InitialEvent()),
        child: WelcomeScreens2Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeScreens2Bloc, WelcomeScreens2State>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.pink200,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildWelcomeScreens(context),
                    SizedBox(height: 14.v),
                    Text("lbl_pathexplorers".tr,
                        style: theme.textTheme.displayMedium),
                    SizedBox(height: 29.v),
                    Container(
                        width: 332.h,
                        margin: EdgeInsets.symmetric(horizontal: 21.h),
                        child: Text("msg_with_the_clue_from".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyLargeBlack90002
                                .copyWith(height: 1.50))),
                    SizedBox(height: 55.v),
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

  /// Section Widget
  Widget _buildWelcomeScreens(BuildContext context) {
    return SizedBox(
        height: 378.v,
        width: 374.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  margin: EdgeInsets.only(left: 29.h, right: 49.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 91.h, vertical: 52.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgVector),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 19.v),
                        Container(
                            height: 150.v,
                            width: 90.h,
                            decoration: BoxDecoration(color: appTheme.gray200))
                      ]))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 378.v,
                  width: 374.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSaly24378x374,
                        height: 378.v,
                        width: 374.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgSubtract204x127,
                        height: 204.v,
                        width: 127.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 62.v))
                  ])))
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
