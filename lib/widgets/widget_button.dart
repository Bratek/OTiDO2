import 'package:flutter/material.dart';
import 'package:otido2/themes/theme_colors.dart';

Widget wButton(BuildContext context,
    {String label = '', Function()? onPressed}) {
  ThemeColors themeColors = ThemeColors(Theme.of(context).brightness);
  return GestureDetector(
    onTap: onPressed ?? () {},
    child: Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: themeColors.accent,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: themeColors.footer,
              offset: const Offset(0.0, 4.0),
              blurRadius: 4.0,
              //spreadRadius: 2.0,
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    ),
  );
}
