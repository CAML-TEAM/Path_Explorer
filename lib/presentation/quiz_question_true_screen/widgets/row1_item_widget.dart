import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';
import 'package:pathexplorers/widgets/custom_elevated_button.dart';
import '../models/row1_item_model.dart';

// ignore: must_be_immutable
class Row1ItemWidget extends StatelessWidget {
  Row1ItemWidget(
    this.row1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Row1ItemModel row1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              row1ItemModelObj.textValue!,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
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
