import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "1 Welcome Screens".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomeScreensScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "2 SignUp".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "3 Login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "6 Profile screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "4 Home".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "8 First NFC Tag".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.firstNfcTagScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "9 Second NFC Tag- Preparing the game".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.secondNfcTagPreparingTheGameScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "10.1 Quiz question (before answering)".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.quizQuestionBeforeAnsweringScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "11 Won overlay".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.wonOverlayScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "12.1 Quiz question (before answering) wrong"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .quizQuestionBeforeAnsweringWrongScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "13 Lost overlay".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.lostOverlayScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "14 Station already completed".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.stationAlreadyCompletedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "15 Finished - Game has end".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.finishedGameHasEndScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "7 Settings Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "5 Tutorial Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.tutorialScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profile1Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "10.2 Quiz question (select)".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.quizQuestionSelectScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "12.2 Quiz question (select wrong)".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.quizQuestionSelectWrongScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "8.1 First NFC Tag".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.firstNfcTag1Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "1.1 Welcome Screens".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomeScreens1Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "10.3 Quiz question (true)".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.quizQuestionTrueScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "12.3 Quiz question (after answering) wrong_One"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .quizQuestionAfterAnsweringWrongOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "1.3 Welcome Screens".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.welcomeScreens2Screen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
