import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    wFlex flex = wFlex(context, 15);
    ThemeData appTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              wLogo(context),
              flex.fit(2),
              Text(
                S.of(context).info3,
                textAlign: TextAlign.center,
                style: appTheme.textTheme.info,
              ),
              flex.fit(2),
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
              flex.fit(2),
              wButton(context, label: S.of(context).send, onPressed: () {
                // Navigator.pushNamed(context, '/login')),
                Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (r) => false);
              }),
            ],
          ),
        ),
      ),
      // ),
      //),
    );
  }
}
