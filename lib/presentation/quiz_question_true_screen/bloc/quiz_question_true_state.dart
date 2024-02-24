// ignore_for_file: must_be_immutable

part of 'quiz_question_true_bloc.dart';

/// Represents the state of QuizQuestionTrue in the application.
class QuizQuestionTrueState extends Equatable {
  QuizQuestionTrueState({this.quizQuestionTrueModelObj});

  QuizQuestionTrueModel? quizQuestionTrueModelObj;

  @override
  List<Object?> get props => [
        quizQuestionTrueModelObj,
      ];

  QuizQuestionTrueState copyWith(
      {QuizQuestionTrueModel? quizQuestionTrueModelObj}) {
    return QuizQuestionTrueState(
      quizQuestionTrueModelObj:
          quizQuestionTrueModelObj ?? this.quizQuestionTrueModelObj,
    );
  }
}
