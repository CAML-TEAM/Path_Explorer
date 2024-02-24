import 'package:flutter/material.dart';
import 'package:pathexplorers/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray5019 => BoxDecoration(
        color: appTheme.gray5019,
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen50,
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink200,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );

  // Gradient decorations
  static BoxDecoration get gradientIndigoToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.indigo500,
            appTheme.cyan300,
          ],
        ),
      );
  static BoxDecoration get gradientLightGreenCcToGreenCc => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.29, 0.09),
          end: Alignment(0.73, 0.89),
          colors: [
            appTheme.lightGreen100Cc,
            appTheme.green500Cc,
            appTheme.green500Cc01,
          ],
        ),
      );
  static BoxDecoration get gradientPinkAToDeepOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.72, 0.91),
          end: Alignment(0.27, 0.13),
          colors: [
            appTheme.pinkA100,
            appTheme.pinkA200,
            appTheme.deepOrange300,
          ],
        ),
      );
  static BoxDecoration get gradientPinkAToDeeporange400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.pinkA20001,
            appTheme.deepOrange400,
          ],
        ),
      );
  static BoxDecoration get gradientPurpleToPurple => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.75, 0.91),
          end: Alignment(0.26, 0.09),
          colors: [
            appTheme.purple100,
            appTheme.purpleA200,
            appTheme.purple10001,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack90002 => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        border: Border.all(
          color: appTheme.black90002,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray50019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineDeepOrange => BoxDecoration(
        color: appTheme.yellow500,
        boxShadow: [
          BoxShadow(
            color: appTheme.deepOrange80033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray50019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray300,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              6,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGrayC => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray9000c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGreen => BoxDecoration(
        color: appTheme.yellow500,
        boxShadow: [
          BoxShadow(
            color: appTheme.green50033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineLime => BoxDecoration(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.lime60033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              6,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineLime6003301 => BoxDecoration(
        color: appTheme.yellow500,
        boxShadow: [
          BoxShadow(
            color: appTheme.lime6003301,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder72 => BorderRadius.circular(
        72.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
