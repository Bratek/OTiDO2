import 'package:flutter/material.dart';

// Color FOOTTER_COLOR_LIGHT = Color(0xFFFFFAF4);
// Color FOOTTER_COLOR_DARK = Color(0xFF423323);

// Color PREVIOUS_COLOR_LIGHT = Color(0xFFFCF5ED);
// Color PREVIOUS_COLOR_DARK = Color(0xFF71563C);

// Color BACKGROUND_COLOR_LIGHT = Color(0xFFF0EAE3);
// Color BACKGROUND_COLOR_DARK = Color(0xFF523F2C);

// Color MEDIUM_COLOR_LIGHT = Color(0xFFA8825C);
// Color MEDIUM_COLOR_DARK = Color(0xFFA8825C);

// Color OPPOSITE_COLOR_LIGHT = Color(0xFF523F2C);
// Color OPPOSITE_COLOR_DARK = Color(0xFFF0EAE3);

// Color ACCENT_COLOR_LIGHT = Color(0xFFF97D01);
// Color ACCENT_COLOR_DARK = Color(0xFFF97D01);

class ThemeColors {
  Brightness light;

  ThemeColors([this.light = Brightness.light]);

  Color get footer =>
      light == Brightness.light ? Color(0xFFFFFAF4) : Color(0xFF423323);
  Color get previous =>
      light == Brightness.light ? Color(0xFFFCF5ED) : Color(0xFF71563C);
  Color get background =>
      light == Brightness.light ? Color(0xFFF0EAE3) : Color(0xFF523F2C);
  Color get medium =>
      light == Brightness.light ? Color(0xFFA8825C) : Color(0xFFA8825C);
  Color get opposite =>
      light == Brightness.light ? Color(0xFF523F2C) : Color(0xFFF0EAE3);
  Color get accent => Color(0xFFEE7700);
}
