import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'bloc/quiz_question_select_wrong_bloc.dart';
import 'models/quiz_question_select_wrong_model.dart';

class QuizQuestionSelectWrongScreen extends StatelessWidget {
  const QuizQuestionSelectWrongScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<QuizQuestionSelectWrongBloc>(
        create: (context) => QuizQuestionSelectWrongBloc(
            QuizQuestionSelectWrongState(
                quizQuestionSelectWrongModelObj:
                    QuizQuestionSelectWrongModel()))
          ..add(QuizQuestionSelectWrongInitialEvent()),
        child: QuizQuestionSelectWrongScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizQuestionSelectWrongBloc,
        QuizQuestionSelectWrongState>(builder: (context, state) {
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
                    _buildQuizQuestion(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildQuizQuestion(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 72.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(flex: 42),
                  Container(
                      width: 278.h,
                      margin: EdgeInsets.only(left: 36.h, right: 27.h),
                      child: Text("msg_what_is_the_correct".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumNunito)),
                  Spacer(flex: 57),
                  GestureDetector(
                      onTap: () {
                        onTapThree(context);
                      },
                      child: Container(
                          padding: EdgeInsets.all(10.h),
                          decoration: AppDecoration.outlineLime6003301.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(children: [
                            CustomElevatedButton(
                                width: 40.h,
                                text: "lbl_a".tr,
                                buttonStyle: CustomButtonStyles.fillYellow,
                                buttonTextStyle:
                                    CustomTextStyles.titleLargeGray5001),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 18.h, top: 15.v, bottom: 5.v),
                                child: Text("msg_it_is_the_largest".tr,
                                    style: theme.textTheme.titleMedium))
                          ]))),
                  SizedBox(height: 10.v),
                  Container(
                      padding: EdgeInsets.all(10.h),
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Row(children: [
                        CustomElevatedButton(width: 40.h, text: "lbl_b".tr),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 18.h, top: 18.v, bottom: 2.v),
                            child: Text("msg_it_is_the_smallest".tr,
                                style: theme.textTheme.titleMedium))
                      ])),
                  SizedBox(height: 10.v),
                  Container(
                      padding: EdgeInsets.all(10.h),
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Row(children: [
                        CustomElevatedButton(width: 40.h, text: "lbl_c".tr),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 20.h, top: 18.v, bottom: 2.v),
                            child: Text("msg_it_is_the_first".tr,
                                style: theme.textTheme.titleMedium))
                      ])),
                  SizedBox(height: 10.v),
                  Container(
                      width: 343.h,
                      padding: EdgeInsets.all(10.h),
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child:
                          CustomElevatedButton(width: 40.h, text: "lbl_d".tr))
                ])));
  }

  /// Navigates to the quizQuestionBeforeAnsweringScreen when the action is triggered.
  onTapThree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.quizQuestionBeforeAnsweringScreen,
    );
  }
}
