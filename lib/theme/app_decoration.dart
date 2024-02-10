import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration(
        border: Border.all(
          color: appTheme.black90001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineErrorContainer => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.errorContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineErrorContainer1 => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        border: Border(
          left: BorderSide(
            color: theme.colorScheme.errorContainer,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: theme.colorScheme.errorContainer,
            width: 1.h,
          ),
          right: BorderSide(
            color: theme.colorScheme.errorContainer,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineErrorContainer2 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.errorContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder35 => BorderRadius.circular(
        35.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL25 => BorderRadius.vertical(
        bottom: Radius.circular(25.h),
      );
  static BorderRadius get customBorderBL35 => BorderRadius.only(
        topRight: Radius.circular(35.h),
        bottomLeft: Radius.circular(35.h),
        bottomRight: Radius.circular(25.h),
      );
  static BorderRadius get customBorderTL25 => BorderRadius.vertical(
        top: Radius.circular(25.h),
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
  static BorderRadius get roundedBorder22 => BorderRadius.circular(
        22.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder59 => BorderRadius.circular(
        59.h,
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
