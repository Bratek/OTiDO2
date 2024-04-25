import 'package:shared_preferences/shared_preferences.dart';

class PreferencesData {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<String?> getPreferencesString({required String key}) async {
    final SharedPreferences prefs = await _prefs;
    String? str = prefs.getString(key);
    return str ?? '';
  }

  Future<void> setPreferencesString(
      {required String key, required String value}) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(key, value);
  }

/*
  User getUser() {
    String str = '{}';
    getPreferencesString(key: 'user')
        .then((value) => value != null ? str = value : str = '{}');
    return User.fromJson(jsonDecode(str));
  }

  Car getCar() {
    String str = '{}';
    getPreferencesString(key: 'car')
        .then((value) => value != null ? str = value : str = '{}');
    return Car.fromJson(jsonDecode(str));
  }

  String getToken() {
    String str = '';
    getPreferencesString(key: 'token')
        .then((value) => value != null ? str = value : str = '');
    return str;
  }

  Future<void> saveUser(Map<String, dynamic> userJson) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString('user', jsonEncode(userJson));
  }

  Future<void> saveCar(Map<String, dynamic> carJson) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString('car', jsonEncode(carJson));
  }

  Future<void> saveToken(String token) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString('token', token);
  }
  */
}
