// ignore_for_file: must_be_immutable

part of 'quiz_question_before_answering_wrong_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///QuizQuestionBeforeAnsweringWrong widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class QuizQuestionBeforeAnsweringWrongEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the QuizQuestionBeforeAnsweringWrong widget is first created.
class QuizQuestionBeforeAnsweringWrongInitialEvent
    extends QuizQuestionBeforeAnsweringWrongEvent {
  @override
  List<Object?> get props => [];
}
