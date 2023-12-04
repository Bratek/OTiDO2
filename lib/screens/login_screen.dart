import 'package:flutter/material.dart';
import 'package:otido2/generated/l10n.dart';
import 'package:otido2/helper.dart';
//import 'package:otido2/themes/theme_colors.dart';
import 'package:otido2/widgets/widget_title.dart';
import 'package:otido2/widgets/widget_text_field.dart';
import '../widgets/widget_logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              wTextField(context, label: 'Эл. почта'),
              wTextField(context, label: 'Пароль', obscure: true),
            ],
          ),
        ),
      ),
    );
  }
}
