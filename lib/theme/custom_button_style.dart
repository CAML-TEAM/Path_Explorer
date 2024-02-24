import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray5001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL6 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );
  static ButtonStyle get fillYellow => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineGray => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
        shadowColor: appTheme.gray50019,
        elevation: 10,
      );
  static ButtonStyle get outlineGreen => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.errorContainer.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
        shadowColor: appTheme.green50,
        elevation: 10,
      );
  static ButtonStyle get outlineGreenTL20 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
        shadowColor: appTheme.green50,
        elevation: 10,
      );
  static ButtonStyle get outlineOnPrimary => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.onPrimary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get outlineRedC => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
        shadowColor: appTheme.red8004c,
        elevation: 4,
      );
  static ButtonStyle get outlineTeal => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
        shadowColor: appTheme.teal40033,
        elevation: 10,
      );
  static ButtonStyle get outlineTealTL16 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
        shadowColor: appTheme.teal40033,
        elevation: 10,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
