// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'row1_item_model.dart';

/// This class defines the variables used in the [quiz_question_true_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class QuizQuestionTrueModel extends Equatable {
  QuizQuestionTrueModel({this.row1ItemList = const []}) {}

  List<Row1ItemModel> row1ItemList;

  QuizQuestionTrueModel copyWith({List<Row1ItemModel>? row1ItemList}) {
    return QuizQuestionTrueModel(
      row1ItemList: row1ItemList ?? this.row1ItemList,
    );
  }

  @override
  List<Object?> get props => [row1ItemList];
}
