import 'package:flutter/material.dart';

enum LogoSize {
  small,
  medium,
  big,
}

Widget wLogo(BuildContext context, {LogoSize logoSize = LogoSize.medium}) {
  String imgPath = '';
  if (Theme.of(context).brightness == Brightness.light) {
    imgPath = 'assets/images/logo_for_light_theme.png';
  } else {
    imgPath = 'assets/images/logo_for_dark_theme.png';
  }

  double size = 64;

  if (logoSize == LogoSize.small) {
    size = 36;
  } else if (logoSize == LogoSize.big) {
    size = 100;
  } else {
    size = 64;
  }

  return Image.asset(
    imgPath,
    height: size,
    width: size,
  );
}
