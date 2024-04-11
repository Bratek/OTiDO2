import 'car.dart';
import 'user.dart';

class Preferences {
  late User user;
  late Car car;
  late String token;

  Preferences({required this.user, required this.car, required this.token});

  // Preferences.fromJson(Map<String, dynamic> json) {
  //   user = User.fromJson(json['user']);
  //   car = Car.fromJason(json['car']);
  //   token = json['token'];
  // }

  // Map<String, dynamic> toJson() => {
  //       'user': user.toJson(),
  //       'car': car.toJson(),
  //       'token': token,
  //     };
}
