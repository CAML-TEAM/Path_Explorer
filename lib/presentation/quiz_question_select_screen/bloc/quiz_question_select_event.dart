// ignore_for_file: must_be_immutable

part of 'quiz_question_select_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///QuizQuestionSelect widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class QuizQuestionSelectEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the QuizQuestionSelect widget is first created.
class QuizQuestionSelectInitialEvent extends QuizQuestionSelectEvent {
  @override
  List<Object?> get props => [];
}
