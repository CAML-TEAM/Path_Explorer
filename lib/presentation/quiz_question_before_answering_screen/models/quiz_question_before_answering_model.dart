// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'row_item_model.dart';

/// This class defines the variables used in the [quiz_question_before_answering_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class QuizQuestionBeforeAnsweringModel extends Equatable {
  QuizQuestionBeforeAnsweringModel({this.rowItemList = const []}) {}

  List<RowItemModel> rowItemList;

  QuizQuestionBeforeAnsweringModel copyWith({List<RowItemModel>? rowItemList}) {
    return QuizQuestionBeforeAnsweringModel(
      rowItemList: rowItemList ?? this.rowItemList,
    );
  }

  @override
  List<Object?> get props => [rowItemList];
}
