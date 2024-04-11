class SharedPref {
  // static double version = 1.02;

  // static Map<String, dynamic> currentUser = {
  //   'id': 0,
  //   'surname': "Пушкин",
  //   'name': "Александр",
  //   'patronymic': "Сергеевич",
  //   'email': "pushkin.alexandr.sergeevitch@mail.ru",
  //   'dlNumber': "567890",
  //   'dlSeries': "12 34"
  // };

  // static Map<String, dynamic> currentCar = {
  //   'id': 1,
  //   'brand': 'Mecedes benz',
  //   'model': 'e500',
  //   'number': 'o 123 aa',
  //   'region': '116'
  // };

  // static String token = '238A-BC15-456U-76F5-ER37';

  Map<String, dynamic> prefs = {
    'user': {
      'id': 0,
      'surname': "Пушкин",
      'name': "Александр",
      'patronymic': "Сергеевич",
      'email': "pushkin.alexandr.sergeevitch@mail.ru",
      'dlNumber': "567890",
      'dlSeries': "12 34"
    },
    'car': {
      'id': 1,
      'brand': 'Mecedes benz',
      'model': 'e500',
      'number': 'o 123 aa',
      'region': '116'
    },
    'token': '',
  };

  String? getString(key) => prefs[key].toString();
}
