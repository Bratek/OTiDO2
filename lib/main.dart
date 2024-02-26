import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:otido2/app_library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      routes: {
        '/': (context) => const LoginScreen(),
        '/login': (context) => const LoginScreen(),
        '/main': (context) => const MainScreen(),
        '/garage': (context) => const GarageScreen(),
        '/car': (context) => const CarScreen(),
      },
      //home: const LoginScreen(), //MainScreen(),f
    );
  }
}
