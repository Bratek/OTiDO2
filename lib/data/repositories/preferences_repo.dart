import 'dart:convert';

import 'package:otido2/data/data_sources/preferences_data.dart';
import 'package:otido2/data/models/car.dart';
import 'package:otido2/data/models/global.dart';
import 'package:otido2/data/models/user.dart';

class PreferencesRepo {
  Future<Map<String, dynamic>> getPrefrences() async {
    return {
      'user': User(),
      'car': Car(),
      'token': 'strToken',
    };

    // final strUser = await getUserPreference().then((value) => value as String);
    // final strCar = await getCarPreference().then((value) => value as String);
    // final strToken =
    //     await getTokenPreference().then((value) => value as String);

    // return {
    //   'user': User.fromJson(jsonDecode(strUser)),
    //   'car': Car.fromJson(jsonDecode(strCar)),
    //   'token': strToken,
    // };
  }

  Future<void> savePreferences(Global global) async {
    PreferencesData dataSource = PreferencesData();
    await dataSource.setPreferencesString(
        key: 'user', value: jsonEncode(global.user));
    await dataSource.setPreferencesString(
        key: 'car', value: jsonEncode(global.car));
    await dataSource.setPreferencesString(key: 'token', value: global.token);
  }

  Future<User> getUserPreference() async {
    PreferencesData dataSource = PreferencesData();
    final strUser = await dataSource
        .getPreferencesString(key: 'user')
        .then((value) => value ?? '{}') as String;
    return User.fromJson(jsonDecode(strUser));
  }

  Future<Car> getCarPreference() async {
    PreferencesData dataSource = PreferencesData();
    final strCar = await dataSource
        .getPreferencesString(key: 'car')
        .then((value) => value ?? '{}') as String;
    return Car.fromJson(jsonDecode(strCar));
  }

  Future<String> getTokenPreference() async {
    PreferencesData dataSource = PreferencesData();
    final strToken = await dataSource
        .getPreferencesString(key: 'token')
        .then((value) => value ?? '') as String;
    return strToken;
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
}
