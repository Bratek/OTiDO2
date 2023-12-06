import 'package:flutter/material.dart';
import 'package:otido2/themes/theme_colors.dart';

Widget wButton(BuildContext context,
    {String label = '', Function()? onPressed}) {
  ThemeColors themeColors = ThemeColors(Theme.of(context).brightness);
  return GestureDetector(
    onTap: onPressed ?? () {},
    child: Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            label,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: themeColors.accent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    ),
  );
}
