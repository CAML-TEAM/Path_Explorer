// ignore_for_file: must_be_immutable

part of 'quiz_question_before_answering_bloc.dart';

/// Represents the state of QuizQuestionBeforeAnswering in the application.
class QuizQuestionBeforeAnsweringState extends Equatable {
  QuizQuestionBeforeAnsweringState({this.quizQuestionBeforeAnsweringModelObj});

  QuizQuestionBeforeAnsweringModel? quizQuestionBeforeAnsweringModelObj;

  @override
  List<Object?> get props => [
        quizQuestionBeforeAnsweringModelObj,
      ];

  QuizQuestionBeforeAnsweringState copyWith(
      {QuizQuestionBeforeAnsweringModel? quizQuestionBeforeAnsweringModelObj}) {
    return QuizQuestionBeforeAnsweringState(
      quizQuestionBeforeAnsweringModelObj:
          quizQuestionBeforeAnsweringModelObj ??
              this.quizQuestionBeforeAnsweringModelObj,
    );
  }
}
