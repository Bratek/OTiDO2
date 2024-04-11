import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otido2/presentation/themes/theme_colors.dart';

late ThemeColors _themeColors;

ThemeData dataTheme(Brightness brightness) {
  _themeColors = ThemeColors(brightness);
  return ThemeData(
    brightness: brightness,
    scaffoldBackgroundColor: _themeColors.backgroundColor,
    textSelectionTheme: textSelectionThemeData,
    inputDecorationTheme: inputDecorationTheme,
    indicatorColor: _themeColors.accentColor,
    //textTheme: CustomTextTheme, //textTheme,
    drawerTheme: drawerTheme,
    popupMenuTheme: popupMenuTheme,
    appBarTheme: appBarTheme(brightness),
  );
}

//ColorScheme ========================================
extension CustomColorScheme on ColorScheme {
  Color get footerColor => _themeColors.footerColor;
  Color get previousColor => _themeColors.previousColor;
  Color get backgroundColor => _themeColors.backgroundColor;
  Color get mediumColor => _themeColors.mediumColor;
  Color get oppositeColor => _themeColors.oppositeColor;
  Color get accentColor => _themeColors.accentColor;
  Color get sameLightColor => _themeColors.sameLightColor;
  Color get buttonTextColor => _themeColors.buttonTextColor;
}

//TextTheme ==========================================
// title:      26, bold, oppositeColor;
// titleMin:   20, bold, oppositeColor;
// body:       18, normal, oppositeColor;
// info:       16, normal, oppositeColor;
// infoInvert: 16, normal, backgroundColor;
// label:      16, normal, mediumColor;
// buttonText: 18, bold, buttonTextColor;
// textButton: 18, normal, oppositeColor;
// param:      20, normal, opposite

extension CustomTextTheme on TextTheme {
  TextStyle get title => titleTextStyle;
  TextStyle get titleMin => titleMinTextStyle;
  TextStyle get body => bodyTextStyle;
  TextStyle get info => infoTextStyle;
  TextStyle get infoInvert => infoInvertTextStyle;
  TextStyle get label => labelTextStyle;
  TextStyle get buttonText => buttonTextStyle;
  TextStyle get textButton => textButtonStyle;
  TextStyle get param => paramTextStyle;

  TextStyle get popupMenu => popupMenuTextTheme;
  TextStyle get menuItem => menuItemTextTheme;
}

TextStyle get menuItemTextTheme => TextStyle(
    color: _themeColors.oppositeColor,
    fontSize: 16,
    fontWeight: FontWeight.normal);

TextStyle get titleTextStyle => TextStyle(
      color: _themeColors.oppositeColor,
      fontSize: 26,
      fontWeight: FontWeight.bold,
    );

TextStyle get titleMinTextStyle => TextStyle(
      color: _themeColors.oppositeColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );

TextStyle get popupMenuTextTheme => TextStyle(
      color: _themeColors.oppositeColor,
      fontSize: 18,
      fontWeight: FontWeight.normal,
    );

TextStyle get bodyTextStyle => TextStyle(
      color: _themeColors.oppositeColor,
      fontSize: 18,
      fontWeight: FontWeight.normal,
    );

TextStyle get labelTextStyle => TextStyle(
      color: _themeColors.mediumColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );

TextStyle get infoTextStyle => TextStyle(
      color: _themeColors.oppositeColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );
TextStyle get infoInvertTextStyle => TextStyle(
      color: _themeColors.backgroundColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );

TextStyle get buttonTextStyle => TextStyle(
      color: _themeColors.buttonTextColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );

TextStyle get textButtonStyle => TextStyle(
      color: _themeColors.oppositeColor,
      fontSize: 18,
      fontWeight: FontWeight.normal,
    );

TextStyle get paramTextStyle => TextStyle(
      color: _themeColors.oppositeColor,
      fontSize: 26,
      fontWeight: FontWeight.normal,
    );

//Widgets Themes ==========================================

DrawerThemeData get drawerTheme => DrawerThemeData(
      backgroundColor: _themeColors.footerColor,
    );

InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
    labelStyle: labelTextStyle,
    hintStyle: bodyTextStyle,
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _themeColors.mediumColor, width: 1)),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _themeColors.accentColor, width: 2)),
    activeIndicatorBorder:
        BorderSide(color: _themeColors.accentColor, width: 2),
    contentPadding: const EdgeInsets.only(top: 8, bottom: 8));

TextSelectionThemeData get textSelectionThemeData => TextSelectionThemeData(
      cursorColor: _themeColors.accentColor,
      selectionColor: _themeColors.accentColor,
      selectionHandleColor: _themeColors.accentColor,
    );

PopupMenuThemeData get popupMenuTheme => PopupMenuThemeData(
      iconColor: _themeColors.oppositeColor,
      color: _themeColors.footerColor,
      elevation: 10,
      shadowColor: _themeColors.footerColor,
      textStyle: popupMenuTextTheme,
      position: PopupMenuPosition.under,
    );

AppBarTheme appBarTheme(Brightness brightness) {
  _themeColors = ThemeColors(brightness);
  return AppBarTheme(
    backgroundColor: _themeColors.backgroundColor,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //_themeColors.backgroundColor,
    ),
  );
}
