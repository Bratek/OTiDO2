import 'package:otido2/app_library.dart';

class Global {
  static User user = User();
  static Car car = Car();
  static String token = '';

  // void setUserFromSharedPerference() {
  //   var prefs = SharedPref();
  //   user = User.fromJson(prefs.getString('user'));
  // }

  // void setCarFromSharedPreference() {
  //   car = Car.fromJason(SharedPref.currentCar);
  // }
}
