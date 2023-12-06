import 'package:flutter/material.dart';
import 'package:otido2/themes/theme_colors.dart';

class DataTheme {
  Brightness brightness;
  late ThemeColors themeColors;

  DataTheme(this.brightness) {
    themeColors = ThemeColors(brightness);
  }

  ThemeData get theme => ThemeData(
        brightness: brightness,
        scaffoldBackgroundColor: themeColors.background,
        textSelectionTheme: textSelectionThemeData,
        inputDecorationTheme: inputDecorationTheme,
        indicatorColor: themeColors.accent,
        textTheme: textTheme,
      );

  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
      labelStyle: labelTextStyle,
      hintStyle: bodyTextStyle,
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: themeColors.medium, width: 1)),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: themeColors.accent, width: 2)),
      activeIndicatorBorder: BorderSide(color: themeColors.accent, width: 2),
      contentPadding: const EdgeInsets.only(top: 8, bottom: 8));

  TextSelectionThemeData get textSelectionThemeData => TextSelectionThemeData(
        cursorColor: themeColors.accent,
        selectionColor: themeColors.accent,
        selectionHandleColor: themeColors.accent,
      );

  TextTheme get textTheme => TextTheme(
        //Заголовки
        headlineMedium: titleTextStyle,
        // текст в кнопке
        titleMedium: buttonTextStyle,
        // текстовая кнопка
        titleSmall: textButtonStyle,
        // текст подсказки
        labelMedium: labelTextStyle,
        // текст в textField
        bodyMedium: bodyTextStyle,
        // текст с информацией
        bodySmall: infoTextStyle,
      );

  TextStyle get titleTextStyle => TextStyle(
        color: themeColors.opposite,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      );

  TextStyle get bodyTextStyle => TextStyle(
        color: themeColors.opposite,
        fontSize: 20,
        fontWeight: FontWeight.normal,
      );

  TextStyle get labelTextStyle => TextStyle(
        color: themeColors.medium,
        fontSize: 20,
        fontWeight: FontWeight.normal,
      );

  TextStyle get infoTextStyle => TextStyle(
        color: themeColors.opposite,
        fontSize: 18,
        fontWeight: FontWeight.normal,
      );

  TextStyle get buttonTextStyle => TextStyle(
        color: Color(0xFFFCF5ED),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      );

  TextStyle get textButtonStyle => TextStyle(
        color: themeColors.medium,
        fontSize: 18,
        fontWeight: FontWeight.normal,
      );
}
