import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'bloc/quiz_question_before_answering_bloc.dart';
import 'models/quiz_question_before_answering_model.dart';
import 'models/row_item_model.dart';
import 'widgets/row_item_widget.dart';

class QuizQuestionBeforeAnsweringScreen extends StatelessWidget {
  const QuizQuestionBeforeAnsweringScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<QuizQuestionBeforeAnsweringBloc>(
        create: (context) => QuizQuestionBeforeAnsweringBloc(
            QuizQuestionBeforeAnsweringState(
                quizQuestionBeforeAnsweringModelObj:
                    QuizQuestionBeforeAnsweringModel()))
          ..add(QuizQuestionBeforeAnsweringInitialEvent()),
        child: QuizQuestionBeforeAnsweringScreen());
  }

  @override
  Widget build(BuildContext context) {
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
                          radius: BorderRadius.circular(10.h)),
                      SizedBox(height: 50.v),
                      Text("msg_how_old_is_the_captain".tr,
                          style: CustomTextStyles.titleMediumNunito),
                      SizedBox(height: 44.v),
                      _buildRow(context)
                    ]))));
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return BlocSelector<
            QuizQuestionBeforeAnsweringBloc,
            QuizQuestionBeforeAnsweringState,
            QuizQuestionBeforeAnsweringModel?>(
        selector: (state) => state.quizQuestionBeforeAnsweringModelObj,
        builder: (context, quizQuestionBeforeAnsweringModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 10.v);
              },
              itemCount:
                  quizQuestionBeforeAnsweringModelObj?.rowItemList.length ?? 0,
              itemBuilder: (context, index) {
                RowItemModel model =
                    quizQuestionBeforeAnsweringModelObj?.rowItemList[index] ??
                        RowItemModel();
                return RowItemWidget(model, onTapRow: () {
                  onTapRow(context);
                });
              });
        });
  }

  /// Navigates to the quizQuestionSelectScreen when the action is triggered.
  onTapRow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.quizQuestionSelectScreen,
    );
  }
}
