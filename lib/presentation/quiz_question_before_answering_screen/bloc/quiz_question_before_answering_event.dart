// ignore_for_file: must_be_immutable

part of 'quiz_question_before_answering_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///QuizQuestionBeforeAnswering widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class QuizQuestionBeforeAnsweringEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the QuizQuestionBeforeAnswering widget is first created.
class QuizQuestionBeforeAnsweringInitialEvent
    extends QuizQuestionBeforeAnsweringEvent {
  @override
  List<Object?> get props => [];
}
