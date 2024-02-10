import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeDeeporange400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.deepOrange400,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLargePrimaryContainer16 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 16.fSize,
      );
  static get bodyLargePrimaryContainerLight =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 14.fSize,
      );
  static get bodyMediumff4f4f51 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF4F4F51),
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallNicoMoji => theme.textTheme.bodySmall!.nicoMoji;
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 8.fSize,
      );
  static get bodySmallPrimaryContainer_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Headline text style
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get headlineSmallOnPrimaryContainerBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeIndigo900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterGray100 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInterGray900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInterPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeNicoMoji => theme.textTheme.titleLarge!.nicoMoji;
  static get titleLargeNicoMojiPrimaryContainer =>
      theme.textTheme.titleLarge!.nicoMoji.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimaryContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeff000000 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF000000),
      );
  static get titleLargeff000000Bold => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDeeporange400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrange400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallIndigo900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallff4f4f51 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF4F4F51),
      );
}

extension on TextStyle {
  TextStyle get nicoMoji {
    return copyWith(
      fontFamily: 'Nico Moji',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
