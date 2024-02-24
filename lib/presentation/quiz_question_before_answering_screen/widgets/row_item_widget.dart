import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import '../models/row_item_model.dart';

// ignore: must_be_immutable
class RowItemWidget extends StatelessWidget {
  RowItemWidget(
    this.rowItemModelObj, {
    Key? key,
    this.onTapRow,
  }) : super(
          key: key,
        );

  RowItemModel rowItemModelObj;

  VoidCallback? onTapRow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRow!.call();
      },
      child: Container(
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          children: [
            _buildButtonText(context),
            Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 9.v,
                bottom: 11.v,
              ),
              child: Text(
                rowItemModelObj.textValue!,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonText(BuildContext context) {
    return CustomElevatedButton(
      width: 40.h,
      text: "lbl_a".tr,
    );
  }
}
