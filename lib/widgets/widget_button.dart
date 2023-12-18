import 'package:flutter/material.dart';
import 'package:otido2/themes/data_theme.dart';

Widget wButton(BuildContext context,
    {String label = '', Function()? onPressed}) {
  //ThemeColors themeColors = ThemeColors(Theme.of(context).brightness);
  ThemeData appTheme = Theme.of(context);
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
            style: appTheme.textTheme.title,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.colorScheme.accentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    ),
  );
}
