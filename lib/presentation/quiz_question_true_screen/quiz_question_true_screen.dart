import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'bloc/quiz_question_true_bloc.dart';
import 'models/quiz_question_true_model.dart';
import 'models/row1_item_model.dart';
import 'widgets/row1_item_widget.dart';

class QuizQuestionTrueScreen extends StatelessWidget {
  const QuizQuestionTrueScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<QuizQuestionTrueBloc>(
      create: (context) => QuizQuestionTrueBloc(QuizQuestionTrueState(
        quizQuestionTrueModelObj: QuizQuestionTrueModel(),
      ))
        ..add(QuizQuestionTrueInitialEvent()),
      child: QuizQuestionTrueScreen(),
    );
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
              _buildRow(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return BlocSelector<QuizQuestionTrueBloc, QuizQuestionTrueState,
        QuizQuestionTrueModel?>(
      selector: (state) => state.quizQuestionTrueModelObj,
      builder: (context, quizQuestionTrueModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount: quizQuestionTrueModelObj?.row1ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Row1ItemModel model =
                quizQuestionTrueModelObj?.row1ItemList[index] ??
                    Row1ItemModel();
            return Row1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
