import 'package:flutter/material.dart';
import 'package:otido2/generated/l10n.dart';
import 'package:otido2/helper.dart';
import 'package:otido2/themes/theme_colors.dart';
import 'package:otido2/widgets/main_title.dart';

import '../widgets/logo.dart';

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
              vSpace(30),
              const Logo(),
              vSpace(50),
              MainTitle(S.of(context).dobro_pozhalovat),
              vSpace(50),
              const TextField(
                style: TextStyle(color: OPPOSITE_COLOR_DARK, fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'Login',
                  labelStyle: TextStyle(
                    color: Color(0xFFA8825C),
                    fontSize: 22,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFA8825C), width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF97D01), width: 2),
                  ),
                ),
              ),
              const TextField(
                style: TextStyle(color: Colors.black, fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Color(0xFFA8825C),
                    fontSize: 22,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFA8825C), width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF97D01), width: 2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
