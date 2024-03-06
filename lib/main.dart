import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:otido2/app_library.dart';
import 'package:otido2/data/db.dart';
import 'package:otido2/screens/new_password_screen.dart';
import 'package:otido2/screens/recovery_screen.dart';
import 'package:otido2/screens/wb_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    DB db = DB();
    gCurrentCar = db.getCarById(gCurrentCarId);

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
        '/registation': (context) => const RegistrationScreen(),
        '/confirm': (context) => const ConfirmScreen(),
        '/recovery': (context) => const RecoveryScreen(),
        '/newpassword': (context) => const NewPasswordScreen(),
        '/main': (context) => const MainScreen(),
        '/garage': (context) => const GarageScreen(),
        '/car': (context) => const CarScreen(),
        '/wb': (context) => const WBScreen(),
      },
      //home: const LoginScreen(), //MainScreen(),f
    );
  }
}
