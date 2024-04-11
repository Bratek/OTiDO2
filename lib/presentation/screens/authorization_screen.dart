import 'dart:async';

import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';
import 'package:otido2/data/models/preferences.dart';
import 'package:otido2/data/repositories/preferences_repo.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  Future<Preferences> loadPreferences() async {
    PreferencesRepo pri = PreferencesRepo();
    final result = await pri.getPrefrences().then((value) => value);
    await Future.delayed(const Duration(seconds: 2));
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadPreferences(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Preferences preferences = snapshot.data as Preferences;
            if (preferences.token.isNotEmpty) {
              return const MainScreen();
            } else {
              return const LoginScreen();
            }
          } else if (snapshot.hasError) {
            return const Text('Error');
          } else {
            return const SplashScreen();
          }
        });
  }
}
