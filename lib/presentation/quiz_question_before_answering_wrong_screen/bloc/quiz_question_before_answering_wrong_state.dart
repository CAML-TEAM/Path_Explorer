// ignore_for_file: must_be_immutable

part of 'quiz_question_before_answering_wrong_bloc.dart';

/// Represents the state of QuizQuestionBeforeAnsweringWrong in the application.
class QuizQuestionBeforeAnsweringWrongState extends Equatable {
  QuizQuestionBeforeAnsweringWrongState(
      {this.quizQuestionBeforeAnsweringWrongModelObj});

  QuizQuestionBeforeAnsweringWrongModel?
      quizQuestionBeforeAnsweringWrongModelObj;

  @override
  List<Object?> get props => [
        quizQuestionBeforeAnsweringWrongModelObj,
      ];

  QuizQuestionBeforeAnsweringWrongState copyWith(
      {QuizQuestionBeforeAnsweringWrongModel?
          quizQuestionBeforeAnsweringWrongModelObj}) {
    return QuizQuestionBeforeAnsweringWrongState(
      quizQuestionBeforeAnsweringWrongModelObj:
          quizQuestionBeforeAnsweringWrongModelObj ??
              this.quizQuestionBeforeAnsweringWrongModelObj,
    );
  }
}
