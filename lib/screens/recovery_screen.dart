import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);
    wFlex flex = wFlex(context, 14);

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
                S.of(context).info_2,
                textAlign: TextAlign.center,
                style: appTheme.textTheme.info,
              ),
              flex.fit(1),
              wTextField(context,
                  label: S.of(context).email,
                  keyboardType: TextInputType.emailAddress),
              flex.fit(2),
              wButton(context,
                  label: S.of(context).send,
                  onPressed: () => Navigator.pushNamed(context, '/confirm',
                      arguments: '/newpassword')),
            ],
          ),
        ),
      ),
      // ),
      //),
    );
  }
}
