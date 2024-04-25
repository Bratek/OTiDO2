import 'package:flutter/material.dart';
import 'package:otido2/data/models/global.dart';
import 'package:otido2/data/repositories/preferences_repo.dart';

class AppProvider with ChangeNotifier {
  bool _isLoading = true;
  late Global _global;

  bool get isLoading => _isLoading;
  Global get global => _global;

  Future<void> loadPreferences() async {
    final pref = PreferencesRepo();
    final result = await pref.getPrefrences().then((value) => value);
    _global = Global(
        token: result['token'], user: result['user'], car: result['car']);
    await Future.delayed(const Duration(seconds: 1));
    _isLoading = false;

    notifyListeners();
  }
}
