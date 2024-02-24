// ignore_for_file: must_be_immutable

part of 'quiz_question_after_answering_wrong_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///QuizQuestionAfterAnsweringWrongOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class QuizQuestionAfterAnsweringWrongOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the QuizQuestionAfterAnsweringWrongOne widget is first created.
class QuizQuestionAfterAnsweringWrongOneInitialEvent
    extends QuizQuestionAfterAnsweringWrongOneEvent {
  @override
  List<Object?> get props => [];
}
