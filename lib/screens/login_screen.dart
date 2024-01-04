import 'package:flutter/material.dart';
import 'package:otido2/helper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //var themeColors = ThemeColors(Theme.of(context).brightness);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              vSpace(60),
              wLogo(context),
              vSpace(80),
              wTitle(context, title: S.of(context).dobro_pozhalovat),
              vSpace(60),
              wTextField(context, label: S.of(context).email),
              wTextField(context, label: S.of(context).password, obscure: true),
              vSpace(100),
              wButton(context, label: S.of(context).zaregistrirovat),
              vSpace(30),
              TextButton(
                onPressed: () {},
                child: Text(
                  S.of(context).registration,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
