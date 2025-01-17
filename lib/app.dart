import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:otido2/generated/l10n.dart';
import 'package:otido2/presentation/routes.dart';
import 'package:otido2/presentation/screens/main_screen.dart';
import 'package:otido2/presentation/screens/splash_screen.dart';
import 'package:otido2/presentation/themes/data_theme.dart';
import 'package:otido2/utils/provider/app_provider.dart';
import 'package:provider/provider.dart';

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
      //initialRoute: '/',
      routes: routes,
      home: ChangeNotifierProvider(
        create: (_) => AppProvider(),
        builder: (context, child) {
          return Consumer<AppProvider>(builder: (context, appProvider, _) {
            return appProvider.isLoading
                ? const SplashScreen()
                : const MainScreen();
          }); //SplashScreen
        },
      ),
    );
  }
}
