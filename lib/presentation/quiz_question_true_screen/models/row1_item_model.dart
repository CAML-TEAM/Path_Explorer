import '../../../core/app_export.dart';

/// This class is used in the [row1_item_widget] screen.
class Row1ItemModel {
  Row1ItemModel({
    this.textValue,
    this.id,
  }) {
    textValue = textValue ?? "64";
    id = id ?? "";
  }

  String? textValue;

  String? id;
}
