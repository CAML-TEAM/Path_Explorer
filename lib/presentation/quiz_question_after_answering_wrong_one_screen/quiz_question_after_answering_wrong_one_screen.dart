import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'bloc/quiz_question_after_answering_wrong_one_bloc.dart';
import 'models/quiz_question_after_answering_wrong_one_model.dart';

class QuizQuestionAfterAnsweringWrongOneScreen extends StatelessWidget {
  const QuizQuestionAfterAnsweringWrongOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<QuizQuestionAfterAnsweringWrongOneBloc>(
        create: (context) => QuizQuestionAfterAnsweringWrongOneBloc(
            QuizQuestionAfterAnsweringWrongOneState(
                quizQuestionAfterAnsweringWrongOneModelObj:
                    QuizQuestionAfterAnsweringWrongOneModel()))
          ..add(QuizQuestionAfterAnsweringWrongOneInitialEvent()),
        child: QuizQuestionAfterAnsweringWrongOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizQuestionAfterAnsweringWrongOneBloc,
        QuizQuestionAfterAnsweringWrongOneState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray5001,
              body: SizedBox(
                  height: 768.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage221,
                        height: 768.v,
                        width: 375.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 72.v),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Spacer(),
                                  _buildColumnSeven(context),
                                  SizedBox(height: 10.v),
                                  _buildRowSix(context),
                                  SizedBox(height: 10.v),
                                  _buildColumnTwo(context),
                                  SizedBox(height: 10.v),
                                  _buildRowFour(context)
                                ])))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildButtonA(BuildContext context) {
    return CustomElevatedButton(
        width: 40.h,
        text: "lbl_a".tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleLargeGray5001);
  }

  /// Section Widget
  Widget _buildColumnSeven(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapColumnSeven(context);
        },
        child: Container(
            width: 343.h,
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.gradientPinkAToDeeporange400
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: _buildButtonA(context)));
  }

  /// Section Widget
  Widget _buildButtonB(BuildContext context) {
    return CustomElevatedButton(width: 40.h, text: "lbl_b".tr);
  }

  /// Section Widget
  Widget _buildRowSix(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(children: [
          _buildButtonB(context),
          Padding(
              padding: EdgeInsets.only(left: 19.h, top: 12.v, bottom: 8.v),
              child: Text("msg_it_is_the_smallest".tr,
                  style: theme.textTheme.titleMedium)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgCheck24x24,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 8.v, right: 8.h, bottom: 8.v))
        ]));
  }

  /// Section Widget
  Widget _buildButtonC(BuildContext context) {
    return CustomElevatedButton(width: 40.h, text: "lbl_c".tr);
  }

  /// Section Widget
  Widget _buildColumnTwo(BuildContext context) {
    return Container(
        width: 343.h,
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: _buildButtonC(context));
  }

  /// Section Widget
  Widget _buildButtonD(BuildContext context) {
    return CustomElevatedButton(width: 40.h, text: "lbl_d".tr);
  }

  /// Section Widget
  Widget _buildRowFour(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(children: [
          _buildButtonD(context),
          Padding(
              padding: EdgeInsets.only(left: 17.h, top: 13.v, bottom: 7.v),
              child: Text("msg_it_is_the_last_building".tr,
                  style: theme.textTheme.titleMedium))
        ]));
  }

  /// Navigates to the quizQuestionBeforeAnsweringScreen when the action is triggered.
  onTapColumnSeven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.quizQuestionBeforeAnsweringScreen,
    );
  }
}
