import 'package:flutter/material.dart';

Widget wLogo(BuildContext context) {
  String imgPath = '';
  if (Theme.of(context).brightness == Brightness.light) {
    imgPath = 'assets/images/logo_for_light_theme.png';
  } else {
    imgPath = 'assets/images/logo_for_dark_theme.png';
  }
  return Image.asset(
    imgPath,
    height: 85,
    width: 83,
  );
}
