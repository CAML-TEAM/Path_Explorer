// ignore_for_file: must_be_immutable

part of 'quiz_question_select_wrong_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///QuizQuestionSelectWrong widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class QuizQuestionSelectWrongEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the QuizQuestionSelectWrong widget is first created.
class QuizQuestionSelectWrongInitialEvent extends QuizQuestionSelectWrongEvent {
  @override
  List<Object?> get props => [];
}
