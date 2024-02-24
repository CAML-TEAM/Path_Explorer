import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get bodyLargeManropeBlack90002 =>
      theme.textTheme.bodyLarge!.manrope.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyLargeff000000 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF000000),
      );
  static get bodyLargeffe6005b => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFFE6005B),
      );
  static get bodyMediumBlack90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get bodySmallEpilogueGray50 =>
      theme.textTheme.bodySmall!.epilogue.copyWith(
        color: appTheme.gray50,
      );
  // Display text style
  static get displayMediumGreen400 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.green400,
      );
  static get displayMediumOnPrimary => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get displayMediumPinkA20001 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.pinkA20001,
      );
  static get displayMediumPrimary => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline text style
  static get headlineMediumAlegreyaBluegray900 =>
      theme.textTheme.headlineMedium!.alegreya.copyWith(
        color: appTheme.blueGray900,
        fontSize: 26.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumEpilogueff371b34 =>
      theme.textTheme.headlineMedium!.epilogue.copyWith(
        color: Color(0XFF371B34),
        fontSize: 26.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumEpilogueff371b34Bold =>
      theme.textTheme.headlineMedium!.epilogue.copyWith(
        color: Color(0XFF371B34),
        fontSize: 26.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumEpilogueff371b34SemiBold =>
      theme.textTheme.headlineMedium!.epilogue.copyWith(
        color: Color(0XFF371B34),
        fontSize: 26.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumff00082e => theme.textTheme.headlineMedium!.copyWith(
        color: Color(0XFF00082E),
      );
  static get headlineMediumff5fe85c => theme.textTheme.headlineMedium!.copyWith(
        color: Color(0XFF5FE85C),
      );
  static get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRubikOnPrimary =>
      theme.textTheme.labelLarge!.rubik.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRubikOnPrimaryBold =>
      theme.textTheme.labelLarge!.rubik.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeGray5001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleLargeInterBlack90002 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterPrimaryContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90002_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray5001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleMediumGray5001Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterBlack90002 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumManropePrimaryContainer =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunito => theme.textTheme.titleMedium!.nunito.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumPinkA20001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pinkA20001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff00082e => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF00082E),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff44dae5 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF44DAE5),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallGray50001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleSmallGray9006d => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray9006d,
      );
  static get titleSmallInterBlack90002 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterGray80001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPink800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pink800,
      );
}

extension on TextStyle {
  TextStyle get epilogue {
    return copyWith(
      fontFamily: 'Epilogue',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get alegreya {
    return copyWith(
      fontFamily: 'Alegreya',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
