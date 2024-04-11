import 'dart:convert';

import 'package:otido2/data/data_sources/preferences_data.dart';
import 'package:otido2/data/models/car.dart';
import 'package:otido2/data/models/preferences.dart';
import 'package:otido2/data/models/user.dart';

class PreferencesRepo {
  Future<Preferences> getPrefrences() async {
    PreferencesData dataSource = PreferencesData();

    final strUser = await dataSource
        .getPreferencesString(key: 'user')
        .then((value) => value ?? '{}') as String;
    final strCar = await dataSource
        .getPreferencesString(key: 'car')
        .then((value) => value ?? '{}') as String;
    final strToken = await dataSource
        .getPreferencesString(key: 'token')
        .then((value) => value ?? '') as String;
    Preferences preferences = Preferences(
      token: strToken,
      user: User.fromJson(jsonDecode(strUser)),
      car: Car.fromJson(jsonDecode(strCar)),
    );
    return preferences;
  }

  Future<void> savePreferences(Preferences preferences) async {
    PreferencesData dataSource = PreferencesData();
    await dataSource.setPreferencesString(
        key: 'user', value: jsonEncode(preferences.user));
    await dataSource.setPreferencesString(
        key: 'car', value: jsonEncode(preferences.car));
    await dataSource.setPreferencesString(
        key: 'token', value: preferences.token);
  }

  Future<void> setUserPreference(User user) async {
    PreferencesData dataSource = PreferencesData();
    await dataSource.setPreferencesString(key: 'user', value: jsonEncode(user));
  }

  Future<void> setCarPreference(Car car) async {
    PreferencesData dataSource = PreferencesData();
    await dataSource.setPreferencesString(key: 'car', value: jsonEncode(car));
  }

  Future<void> setTokenPreference(String token) async {
    PreferencesData dataSource = PreferencesData();
    await dataSource.setPreferencesString(key: 'token', value: token);
  }

  // Future<void> savePreferences(Preferences preferences) async {
  //   PreferencesData dataSource = PreferencesData();
  //   await dataSource.saveToken('{' + preferences.token + '}');
  //   await dataSource.saveUser(preferences.user.toJson());
  //   await dataSource.saveCar(preferences.car.toJson());
  // }
}
