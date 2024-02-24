// ignore_for_file: must_be_immutable

part of 'quiz_question_true_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///QuizQuestionTrue widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class QuizQuestionTrueEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the QuizQuestionTrue widget is first created.
class QuizQuestionTrueInitialEvent extends QuizQuestionTrueEvent {
  @override
  List<Object?> get props => [];
}
