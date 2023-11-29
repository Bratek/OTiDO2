import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    String imgPath = '';
    if (MediaQuery.platformBrightnessOf(context) == Brightness.light) {
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
}
