import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pathexplorers/presentation/quiz_question_select_wrong_screen/models/quiz_question_select_wrong_model.dart';
part 'quiz_question_select_wrong_event.dart';
part 'quiz_question_select_wrong_state.dart';

/// A bloc that manages the state of a QuizQuestionSelectWrong according to the event that is dispatched to it.
class QuizQuestionSelectWrongBloc
    extends Bloc<QuizQuestionSelectWrongEvent, QuizQuestionSelectWrongState> {
  QuizQuestionSelectWrongBloc(QuizQuestionSelectWrongState initialState)
      : super(initialState) {
    on<QuizQuestionSelectWrongInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QuizQuestionSelectWrongInitialEvent event,
    Emitter<QuizQuestionSelectWrongState> emit,
  ) async {}
}
