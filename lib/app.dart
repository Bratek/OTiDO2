import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:otido2/generated/l10n.dart';
import 'package:otido2/presentation/routes.dart';
import 'package:otido2/presentation/themes/data_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: dataTheme(Brightness.light),
      darkTheme: dataTheme(Brightness.dark),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ru'),
      ],
      initialRoute: '/',
      routes: routes,
    );
  }
}
