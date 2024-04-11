import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);
    wFlex flex = wFlex(context, 13);
    RouteSettings? settings = ModalRoute.of(context)?.settings;
    var nextScreen =
        (settings == null ? '/login' : settings.arguments.toString());

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
                S.of(context).info_1_1,
                textAlign: TextAlign.center,
                style: appTheme.textTheme.info,
              ),
              Text(
                S.of(context).info_1_2,
                textAlign: TextAlign.center,
                style: appTheme.textTheme.info,
              ),
              flex.fit(1),
              wTextField(context,
                  label: S.of(context).confirm_code,
                  keyboardType: TextInputType.number,
                  align: TextAlign.center),
              flex.fit(2),
              wButton(context, label: S.of(context).send, onPressed: () {
                if (nextScreen == '/login') {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/login', (r) => false);
                } else {
                  Navigator.pushNamed(context, nextScreen);
                }
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
