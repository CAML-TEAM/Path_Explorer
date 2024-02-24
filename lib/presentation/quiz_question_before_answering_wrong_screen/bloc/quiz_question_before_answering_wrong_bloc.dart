import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/quiz_question_before_answering_wrong_screen/models/quiz_question_before_answering_wrong_model.dart';
part 'quiz_question_before_answering_wrong_event.dart';
part 'quiz_question_before_answering_wrong_state.dart';

/// A bloc that manages the state of a QuizQuestionBeforeAnsweringWrong according to the event that is dispatched to it.
class QuizQuestionBeforeAnsweringWrongBloc extends Bloc<
    QuizQuestionBeforeAnsweringWrongEvent,
    QuizQuestionBeforeAnsweringWrongState> {
  QuizQuestionBeforeAnsweringWrongBloc(
      QuizQuestionBeforeAnsweringWrongState initialState)
      : super(initialState) {
    on<QuizQuestionBeforeAnsweringWrongInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QuizQuestionBeforeAnsweringWrongInitialEvent event,
    Emitter<QuizQuestionBeforeAnsweringWrongState> emit,
  ) async {}
}
