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
    wFlex flex = wFlex(context, 40);

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: sysOverlayStyle,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              wLogo(context),
              flex.fit(4),
              wTitle(context, title: S.of(context).dobro_pozhalovat),
              flex.fit(3),
              wTextField(context,
                  label: S.of(context).email,
                  keyboardType: TextInputType.emailAddress),
              wTextField(
                context,
                label: S.of(context).password,
                obscure: true,
              ),
              flex.fit(3),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/recovery'),
                child: Text(
                  S.of(context).zabyil_parol,
                  style: Theme.of(context).textTheme.label,
                ),
              ),
              flex.fit(1),
              wButton(context,
                  label: S.of(context).sign_in,
                  onPressed: () => Navigator.pushNamed(context, '/main')),
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
