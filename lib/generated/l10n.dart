// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `OTiDO`
  String get app_name {
    return Intl.message(
      'OTiDO',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Bus`
  String get bus {
    return Intl.message(
      'Bus',
      name: 'bus',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get carName {
    return Intl.message(
      'Name',
      name: 'carName',
      desc: '',
      args: [],
    );
  }

  /// `Cargo`
  String get cargo {
    return Intl.message(
      'Cargo',
      name: 'cargo',
      desc: '',
      args: [],
    );
  }

  /// `Welcome!`
  String get dobro_pozhalovat {
    return Intl.message(
      'Welcome!',
      name: 'dobro_pozhalovat',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message(
      'Feedback',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Garage`
  String get garage {
    return Intl.message(
      'Garage',
      name: 'garage',
      desc: '',
      args: [],
    );
  }

  /// `Car number`
  String get gosNumber {
    return Intl.message(
      'Car number',
      name: 'gosNumber',
      desc: '',
      args: [],
    );
  }

  /// `email@mail.com`
  String get mail {
    return Intl.message(
      'email@mail.com',
      name: 'mail',
      desc: '',
      args: [],
    );
  }

  /// `Model`
  String get model2 {
    return Intl.message(
      'Model',
      name: 'model2',
      desc: '',
      args: [],
    );
  }

  /// `Passanger`
  String get passanger {
    return Intl.message(
      'Passanger',
      name: 'passanger',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get registration {
    return Intl.message(
      'Registration',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Advertisement`
  String get reklama {
    return Intl.message(
      'Advertisement',
      name: 'reklama',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get sign_out {
    return Intl.message(
      'Sign out',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get user_name {
    return Intl.message(
      'Name',
      name: 'user_name',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle`
  String get vehicle {
    return Intl.message(
      'Vehicle',
      name: 'vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Version: 2.0`
  String get version {
    return Intl.message(
      'Version: 2.0',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get zaregistrirovat {
    return Intl.message(
      'Register',
      name: 'zaregistrirovat',
      desc: '',
      args: [],
    );
  }

  /// `Region`
  String get region {
    return Intl.message(
      'Region',
      name: 'region',
      desc: '',
      args: [],
    );
  }

  /// `Car type`
  String get carType {
    return Intl.message(
      'Car type',
      name: 'carType',
      desc: '',
      args: [],
    );
  }

  /// `Car brand`
  String get carBrand {
    return Intl.message(
      'Car brand',
      name: 'carBrand',
      desc: '',
      args: [],
    );
  }

  /// `Car model`
  String get carModel {
    return Intl.message(
      'Car model',
      name: 'carModel',
      desc: '',
      args: [],
    );
  }

  /// `Забыл пароль`
  String get zabyil_parol {
    return Intl.message(
      'Забыл пароль',
      name: 'zabyil_parol',
      desc: '',
      args: [],
    );
  }

  /// `Отправить`
  String get send {
    return Intl.message(
      'Отправить',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Код подтверждения`
  String get confirm_code {
    return Intl.message(
      'Код подтверждения',
      name: 'confirm_code',
      desc: '',
      args: [],
    );
  }

  /// `На указанную электронную почту было направлено письмо с кодом подтверждения.`
  String get info_1_1 {
    return Intl.message(
      'На указанную электронную почту было направлено письмо с кодом подтверждения.',
      name: 'info_1_1',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, введите его ниже для подтверждения регистрации.`
  String get info_1_2 {
    return Intl.message(
      'Пожалуйста, введите его ниже для подтверждения регистрации.',
      name: 'info_1_2',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
