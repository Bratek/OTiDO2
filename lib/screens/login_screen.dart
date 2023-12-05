import 'package:flutter/material.dart';
import 'package:otido2/generated/l10n.dart';
import 'package:otido2/helper.dart';
import 'package:otido2/themes/theme_colors.dart';
import 'package:otido2/widgets/widget_button.dart';
//import 'package:otido2/themes/theme_colors.dart';
import 'package:otido2/widgets/widget_title.dart';
import 'package:otido2/widgets/widget_text_field.dart';
import '../widgets/widget_logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themeColors = ThemeColors(Theme.of(context).brightness);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              vSpace(50),
              wLogo(context),
              vSpace(50),
              wTitle(context, title: S.of(context).dobro_pozhalovat),
              vSpace(50),
              wTextField(context, label: S.of(context).email),
              wTextField(context, label: S.of(context).password, obscure: true),
              vSpace(130),
              wButton(context, label: S.of(context).zaregistrirovat),
              vSpace(30),
              TextButton(
                onPressed: () {},
                child: Text(
                  S.of(context).registration,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
