import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/quiz_question_after_answering_wrong_one_screen/models/quiz_question_after_answering_wrong_one_model.dart';
part 'quiz_question_after_answering_wrong_one_event.dart';
part 'quiz_question_after_answering_wrong_one_state.dart';

/// A bloc that manages the state of a QuizQuestionAfterAnsweringWrongOne according to the event that is dispatched to it.
class QuizQuestionAfterAnsweringWrongOneBloc extends Bloc<
    QuizQuestionAfterAnsweringWrongOneEvent,
    QuizQuestionAfterAnsweringWrongOneState> {
  QuizQuestionAfterAnsweringWrongOneBloc(
      QuizQuestionAfterAnsweringWrongOneState initialState)
      : super(initialState) {
    on<QuizQuestionAfterAnsweringWrongOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QuizQuestionAfterAnsweringWrongOneInitialEvent event,
    Emitter<QuizQuestionAfterAnsweringWrongOneState> emit,
  ) async {}
}
