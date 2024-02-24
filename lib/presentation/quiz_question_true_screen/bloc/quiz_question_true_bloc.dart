import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/row1_item_model.dart';
import 'package:pathexplorers/presentation/quiz_question_true_screen/models/quiz_question_true_model.dart';
part 'quiz_question_true_event.dart';
part 'quiz_question_true_state.dart';

/// A bloc that manages the state of a QuizQuestionTrue according to the event that is dispatched to it.
class QuizQuestionTrueBloc
    extends Bloc<QuizQuestionTrueEvent, QuizQuestionTrueState> {
  QuizQuestionTrueBloc(QuizQuestionTrueState initialState)
      : super(initialState) {
    on<QuizQuestionTrueInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QuizQuestionTrueInitialEvent event,
    Emitter<QuizQuestionTrueState> emit,
  ) async {
    emit(state.copyWith(
        quizQuestionTrueModelObj: state.quizQuestionTrueModelObj?.copyWith(
      row1ItemList: fillRow1ItemList(),
    )));
  }

  List<Row1ItemModel> fillRow1ItemList() {
    return [
      Row1ItemModel(textValue: "64"),
      Row1ItemModel(textValue: "38"),
      Row1ItemModel(textValue: "55")
    ];
  }
}
