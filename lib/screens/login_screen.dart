import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otido2/app_library.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sysOverlayStyle = Theme.of(context).brightness == Brightness.light
        ? SystemUiOverlayStyle.dark
        : SystemUiOverlayStyle.light;
    wFlex flex = wFlex(context, 20);

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: sysOverlayStyle,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              //vSpace(30),
              //flex.fit(1),
              wLogo(context),
              //vSpace(80),
              flex.fit(2),
              wTitle(context, title: S.of(context).dobro_pozhalovat),
              //vSpace(60),
              flex.fit(2),
              wTextField(context,
                  label: S.of(context).email,
                  keyboardType: TextInputType.emailAddress),
              wTextField(
                context,
                label: S.of(context).password,
                obscure: true,
              ),
              //vSpace(30),
              flex.fit(1),
              TextButton(
                onPressed: () {},
                child: Text(
                  S.of(context).zabyil_parol,
                  style: Theme.of(context).textTheme.label,
                ),
              ),
              //vSpace(20),
              flex.fit(1),
              wButton(context,
                  label: S.of(context).sign_in,
                  onPressed: () =>
                      Navigator.pushNamed(context, '/wb')), //'/main')),
              //vSpace(20),
              flex.fit(1),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/registation'),
                child: Text(
                  S.of(context).registration,
                  style: Theme.of(context).textTheme.label,
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
      //),
    );
  }
}
