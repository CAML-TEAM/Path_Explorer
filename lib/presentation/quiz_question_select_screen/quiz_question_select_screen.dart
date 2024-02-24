import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'bloc/quiz_question_select_bloc.dart';
import 'models/quiz_question_select_model.dart';

class QuizQuestionSelectScreen extends StatelessWidget {
  const QuizQuestionSelectScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<QuizQuestionSelectBloc>(
      create: (context) => QuizQuestionSelectBloc(QuizQuestionSelectState(
        quizQuestionSelectModelObj: QuizQuestionSelectModel(),
      ))
        ..add(QuizQuestionSelectInitialEvent()),
      child: QuizQuestionSelectScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizQuestionSelectBloc, QuizQuestionSelectState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle52,
                    height: 230.v,
                    width: 344.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  SizedBox(height: 50.v),
                  Text(
                    "msg_how_old_is_the_captain".tr,
                    style: CustomTextStyles.titleMediumNunito,
                  ),
                  SizedBox(height: 44.v),
                  _buildOne(context),
                  SizedBox(height: 10.v),
                  _buildTwo(context),
                  SizedBox(height: 10.v),
                  _buildThree(context),
                  SizedBox(height: 10.v),
                  _buildFour(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildButtonOne(BuildContext context) {
    return CustomElevatedButton(
      width: 40.h,
      text: "lbl_a".tr,
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          _buildButtonOne(context),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 9.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_64".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonTwo(BuildContext context) {
    return CustomElevatedButton(
      width: 40.h,
      text: "lbl_b".tr,
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          _buildButtonTwo(context),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 9.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_38".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonThree(BuildContext context) {
    return CustomElevatedButton(
      width: 40.h,
      text: "lbl_c".tr,
      buttonStyle: CustomButtonStyles.fillYellow,
      buttonTextStyle: CustomTextStyles.titleLargeGray5001,
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineLime6003301.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildButtonThree(context),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 9.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_42".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonFour(BuildContext context) {
    return CustomElevatedButton(
      width: 40.h,
      text: "lbl_d".tr,
    );
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          _buildButtonFour(context),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 9.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_55".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
