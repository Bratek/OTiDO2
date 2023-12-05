import 'package:flutter/material.dart';
import 'package:otido2/themes/theme_colors.dart';

Brightness brightness = Brightness.dark;

ThemeColors themeColors = ThemeColors(brightness);

ThemeData darkTheme = ThemeData(
  brightness: brightness,
  scaffoldBackgroundColor: themeColors.background,
  textSelectionTheme: textSelectionThemeData,
  inputDecorationTheme: inputDecorationTheme,
  indicatorColor: themeColors.accent,
  textTheme: textTheme,
);

TextSelectionThemeData textSelectionThemeData = TextSelectionThemeData(
  cursorColor: themeColors.accent,
  selectionColor: themeColors.accent,
  selectionHandleColor: themeColors.accent,
);

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    labelStyle: labelTextStyle,
    hintStyle: labelTextStyle,
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: themeColors.medium, width: 1)),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: themeColors.accent, width: 2)),
    activeIndicatorBorder: BorderSide(color: themeColors.accent, width: 2),
    contentPadding: EdgeInsets.only(top: 8, bottom: 8));

TextTheme textTheme = TextTheme(
  //Заголовки
  headlineMedium: titleTextStyle,
  // текст в textField
  bodyMedium: bodyTextStyle,
  // текст в кнопке
  labelLarge: buttonTextStyle,
  // текст в label
  labelMedium: labelTextStyle,
);

TextStyle titleTextStyle = TextStyle(
  color: themeColors.opposite,
  fontSize: 28,
  fontWeight: FontWeight.bold,
);

TextStyle bodyTextStyle = TextStyle(
  color: themeColors.opposite,
  fontSize: 22,
  fontWeight: FontWeight.normal,
);

TextStyle labelTextStyle = TextStyle(
  color: themeColors.medium,
  fontSize: 22,
  fontWeight: FontWeight.normal,
);

TextStyle buttonTextStyle = TextStyle(
  color: themeColors.opposite,
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
