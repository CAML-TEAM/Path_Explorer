import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import 'bloc/quiz_question_before_answering_wrong_bloc.dart';
import 'models/quiz_question_before_answering_wrong_model.dart';

class QuizQuestionBeforeAnsweringWrongScreen extends StatelessWidget {
  const QuizQuestionBeforeAnsweringWrongScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<QuizQuestionBeforeAnsweringWrongBloc>(
      create: (context) => QuizQuestionBeforeAnsweringWrongBloc(
          QuizQuestionBeforeAnsweringWrongState(
        quizQuestionBeforeAnsweringWrongModelObj:
            QuizQuestionBeforeAnsweringWrongModel(),
      ))
        ..add(QuizQuestionBeforeAnsweringWrongInitialEvent()),
      child: QuizQuestionBeforeAnsweringWrongScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizQuestionBeforeAnsweringWrongBloc,
        QuizQuestionBeforeAnsweringWrongState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray5001,
            body: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage221,
                    height: 768.v,
                    width: 375.h,
                    alignment: Alignment.center,
                  ),
                  _buildQuizQuestion(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildQuizQuestion(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 72.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(
              flex: 42,
            ),
            Container(
              width: 278.h,
              margin: EdgeInsets.only(
                left: 46.h,
                right: 17.h,
              ),
              child: Text(
                "msg_what_is_the_correct".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleMediumNunito,
              ),
            ),
            Spacer(
              flex: 57,
            ),
            Container(
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                children: [
                  CustomElevatedButton(
                    width: 40.h,
                    text: "lbl_a".tr,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 11.v,
                      bottom: 9.v,
                    ),
                    child: Text(
                      "msg_it_is_the_largest".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.v),
            Container(
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                children: [
                  CustomElevatedButton(
                    width: 40.h,
                    text: "lbl_b".tr,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 11.v,
                      bottom: 9.v,
                    ),
                    child: Text(
                      "msg_it_is_the_smallest".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.v),
            Container(
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                children: [
                  CustomElevatedButton(
                    width: 40.h,
                    text: "lbl_c".tr,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 11.v,
                      bottom: 9.v,
                    ),
                    child: Text(
                      "msg_it_is_the_first".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.v),
            Container(
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                children: [
                  CustomElevatedButton(
                    width: 40.h,
                    text: "lbl_d".tr,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 11.v,
                      bottom: 9.v,
                    ),
                    child: Text(
                      "msg_it_is_the_last_building".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
