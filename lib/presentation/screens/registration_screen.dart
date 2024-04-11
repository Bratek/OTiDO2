import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    wFlex flex = wFlex(context, 18);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              //flex.fit(1),
              wLogo(context),
              flex.fit(2),
              wTextField(context,
                  label: S.of(context).email,
                  keyboardType: TextInputType.emailAddress),
              wTextField(
                context,
                label: S.of(context).password,
                obscure: true,
              ),
              wTextField(
                context,
                label: S.of(context).reenter_password,
                obscure: true,
              ),
              flex.fit(3),
              wButton(context,
                  label: S.of(context).send,
                  onPressed: () => Navigator.pushNamed(context, '/confirm',
                      arguments: '/login')),
            ],
          ),
        ),
      ),
      // ),
      //),
    );
  }
}
