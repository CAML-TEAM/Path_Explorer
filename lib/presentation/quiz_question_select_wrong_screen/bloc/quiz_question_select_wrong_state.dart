// ignore_for_file: must_be_immutable

part of 'quiz_question_select_wrong_bloc.dart';

/// Represents the state of QuizQuestionSelectWrong in the application.
class QuizQuestionSelectWrongState extends Equatable {
  QuizQuestionSelectWrongState({this.quizQuestionSelectWrongModelObj});

  QuizQuestionSelectWrongModel? quizQuestionSelectWrongModelObj;

  @override
  List<Object?> get props => [
        quizQuestionSelectWrongModelObj,
      ];

  QuizQuestionSelectWrongState copyWith(
      {QuizQuestionSelectWrongModel? quizQuestionSelectWrongModelObj}) {
    return QuizQuestionSelectWrongState(
      quizQuestionSelectWrongModelObj: quizQuestionSelectWrongModelObj ??
          this.quizQuestionSelectWrongModelObj,
    );
  }
}
