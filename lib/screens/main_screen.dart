import 'package:flutter/material.dart';
import 'package:otido2/themes/theme_colors.dart';
import 'package:otido2/widgets/widget_gos_number.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeColors themeColors = ThemeColors(Theme.of(context).brightness);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColors.background,
        leading: IconButton(
          icon: Icon(Icons.reorder),
          iconSize: 32,
          onPressed: () {},
        ),
        title: wGosNumber(context, 'a 123 aa', '123'),
        centerTitle: true,
      ),
    );
  }
}
