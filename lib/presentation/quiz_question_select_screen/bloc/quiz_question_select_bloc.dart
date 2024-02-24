import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/quiz_question_select_screen/models/quiz_question_select_model.dart';
part 'quiz_question_select_event.dart';
part 'quiz_question_select_state.dart';

/// A bloc that manages the state of a QuizQuestionSelect according to the event that is dispatched to it.
class QuizQuestionSelectBloc
    extends Bloc<QuizQuestionSelectEvent, QuizQuestionSelectState> {
  QuizQuestionSelectBloc(QuizQuestionSelectState initialState)
      : super(initialState) {
    on<QuizQuestionSelectInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QuizQuestionSelectInitialEvent event,
    Emitter<QuizQuestionSelectState> emit,
  ) async {}
}
