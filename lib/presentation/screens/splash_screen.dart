import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otido2/app_library.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);
    wFlex flex = wFlex(context, 30);
    final sysOverlayStyle = Theme.of(context).brightness == Brightness.light
        ? SystemUiOverlayStyle.dark
        : SystemUiOverlayStyle.light;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: sysOverlayStyle,
      ),
      body: Center(
        child: Column(
          children: [
            flex.fit(2),
            wLogo(context, logoSize: LogoSize.big),
            flex.fit(5),
            Text(S.of(context).appName,
                style: TextStyle(
                    fontSize: 56,
                    fontWeight: FontWeight.bold,
                    color: appTheme.colorScheme.oppositeColor)),
            Text(S.of(context).tagline,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: appTheme.colorScheme.accentColor)),
            flex.fit(6),
            Text('ver.: 1.02',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: appTheme.colorScheme.oppositeColor)),
          ],
        ),
      ),
      // ),
      //),
    );
  }
}
