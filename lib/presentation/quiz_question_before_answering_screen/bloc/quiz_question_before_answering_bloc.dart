import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/row_item_model.dart';
import 'package:pathexplorers/presentation/quiz_question_before_answering_screen/models/quiz_question_before_answering_model.dart';
part 'quiz_question_before_answering_event.dart';
part 'quiz_question_before_answering_state.dart';

/// A bloc that manages the state of a QuizQuestionBeforeAnswering according to the event that is dispatched to it.
class QuizQuestionBeforeAnsweringBloc extends Bloc<
    QuizQuestionBeforeAnsweringEvent, QuizQuestionBeforeAnsweringState> {
  QuizQuestionBeforeAnsweringBloc(QuizQuestionBeforeAnsweringState initialState)
      : super(initialState) {
    on<QuizQuestionBeforeAnsweringInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QuizQuestionBeforeAnsweringInitialEvent event,
    Emitter<QuizQuestionBeforeAnsweringState> emit,
  ) async {
    emit(state.copyWith(
        quizQuestionBeforeAnsweringModelObj: state
            .quizQuestionBeforeAnsweringModelObj
            ?.copyWith(rowItemList: fillRowItemList())));
  }

  List<RowItemModel> fillRowItemList() {
    return [
      RowItemModel(textValue: "64"),
      RowItemModel(textValue: "38"),
      RowItemModel(textValue: "42"),
      RowItemModel(textValue: "55")
    ];
  }
}
