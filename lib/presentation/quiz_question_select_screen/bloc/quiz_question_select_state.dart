// ignore_for_file: must_be_immutable

part of 'quiz_question_select_bloc.dart';

/// Represents the state of QuizQuestionSelect in the application.
class QuizQuestionSelectState extends Equatable {
  QuizQuestionSelectState({this.quizQuestionSelectModelObj});

  QuizQuestionSelectModel? quizQuestionSelectModelObj;

  @override
  List<Object?> get props => [
        quizQuestionSelectModelObj,
      ];

  QuizQuestionSelectState copyWith(
      {QuizQuestionSelectModel? quizQuestionSelectModelObj}) {
    return QuizQuestionSelectState(
      quizQuestionSelectModelObj:
          quizQuestionSelectModelObj ?? this.quizQuestionSelectModelObj,
    );
  }
}
