import '../../../core/app_export.dart';

/// This class is used in the [row_item_widget] screen.
class RowItemModel {
  RowItemModel({
    this.textValue,
    this.id,
  }) {
    textValue = textValue ?? "64";
    id = id ?? "";
  }

  String? textValue;

  String? id;
}
