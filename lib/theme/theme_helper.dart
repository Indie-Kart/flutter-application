import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.secondaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.errorContainer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.errorContainer,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          color: colorScheme.onPrimaryContainer,
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.primaryContainer,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: 18.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black90001,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 30.fSize,
          fontFamily: 'Nico Moji',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black90001,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: 18.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFF3F3FB),
    primaryContainer: Color(0XFF4F4F51),
    secondaryContainer: Color(0XFFFFFFFF),

    // Error colors
    errorContainer: Color(0XFFFFCE99),
    onErrorContainer: Color(0XFF1E1E1E),

    // On colors(text colors)
    onPrimary: Color(0XFFEE0303),
    onPrimaryContainer: Color(0XFF060606),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF050505);
  Color get black90001 => Color(0XFF000000);

  // Blue
  Color get blueA400 => Color(0XFF1877F2);

  // DeepOrange
  Color get deepOrange400 => Color(0XFFED893E);

  // Gray
  Color get gray100 => Color(0XFFEEF3FD);
  Color get gray300 => Color(0XFFE0E0E0);
  Color get gray600 => Color(0XFF717171);
  Color get gray900 => Color(0XFF111111);

  // Indigo
  Color get indigo900 => Color(0XFF21005D);

  // Red
  Color get red500 => Color(0XFFEA4335);

  // White
  Color get whiteA700 => Color(0XFFFEFEFE);

  // Yellow
  Color get yellowA400 => Color(0XFFE5EA10);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
