// ignore_for_file: must_be_immutable

part of 'quiz_question_after_answering_wrong_one_bloc.dart';

/// Represents the state of QuizQuestionAfterAnsweringWrongOne in the application.
class QuizQuestionAfterAnsweringWrongOneState extends Equatable {
  QuizQuestionAfterAnsweringWrongOneState(
      {this.quizQuestionAfterAnsweringWrongOneModelObj});

  QuizQuestionAfterAnsweringWrongOneModel?
      quizQuestionAfterAnsweringWrongOneModelObj;

  @override
  List<Object?> get props => [
        quizQuestionAfterAnsweringWrongOneModelObj,
      ];

  QuizQuestionAfterAnsweringWrongOneState copyWith(
      {QuizQuestionAfterAnsweringWrongOneModel?
          quizQuestionAfterAnsweringWrongOneModelObj}) {
    return QuizQuestionAfterAnsweringWrongOneState(
      quizQuestionAfterAnsweringWrongOneModelObj:
          quizQuestionAfterAnsweringWrongOneModelObj ??
              this.quizQuestionAfterAnsweringWrongOneModelObj,
    );
  }
}
