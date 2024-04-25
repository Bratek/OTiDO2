import 'package:flutter/material.dart';
import 'package:otido2/data/models/calendar_day.dart';
import 'package:otido2/data/models/car.dart';
//import 'package:otido2/app_library.dart';
import 'package:otido2/data/models/message.dart';
import 'package:otido2/data/models/user.dart';
import 'package:otido2/data/repositories/preferences_repo.dart';

class Global {
  String token = '';
  late User user;
  late Car car;
  late List<CalendarDay> calendar = [];
  late List<Message> messages = [];

  Global({String? token, User? user, Car? car}) {
    this.token = token ?? '';
    this.user = user ?? User();
    this.car = car ?? Car();
  }

  void saveDataToSharedPreferences() {
    final pref = PreferencesRepo();
    pref.savePreferences(this);
  }
}
