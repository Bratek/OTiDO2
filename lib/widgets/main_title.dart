import 'package:flutter/material.dart';
import 'package:otido2/themes/theme_colors.dart';

class MainTitle extends StatelessWidget {
  final String title;

  const MainTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    final Color textColor;
    if (MediaQuery.platformBrightnessOf(context) == Brightness.light) {
      textColor = OPPOSITE_COLOR_LIGHT;
    } else {
      textColor = OPPOSITE_COLOR_DARK;
    }
    return Text(title,
        style: TextStyle(
            color: textColor, fontSize: 28, fontWeight: FontWeight.bold));
  }
}
