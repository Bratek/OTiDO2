import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';
import 'package:otido2/utils/provider/app_provider.dart';
import 'package:provider/provider.dart';

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppProvider>(
      create: (context) => AppProvider(),
      child: Consumer<AppProvider>(
        builder: (context, appProvider, _) {
          return appProvider.isLoading ? SplashScreen() : MainScreen();
        },
      ),
    );
  }
}
