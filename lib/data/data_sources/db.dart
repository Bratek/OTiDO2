import 'package:otido2/app_library.dart';

// Car list
List<Car> cars = <Car>[
  Car(
    id: 0,
    brand: 'BMW',
    model: 'X5',
    gosNumber: 'т 716 тт',
    gosRegion: '716',
  ),
  Car(
    id: 1,
    brand: 'Mecedes benz',
    model: 'e500',
    gosNumber: 'o 123 aa',
    gosRegion: '116',
  ),
  Car(
    id: 2,
    brand: 'LADA',
    model: 'Largus Cross 1.6 Renault K4M',
    gosNumber: 'x 578 px',
    gosRegion: '116',
  ),
];

// User list
List<User> users = <User>[
  User(
      id: 0,
      surname: "Пушкин",
      name: "Александр",
      patronymic: "Сергеевич",
      email: "pushkin.alexandr.sergeevitch@mail.ru",
      docNumber: "567890",
      docSeria: "12 34"),
  User(
      id: 1,
      surname: "Есенин",
      name: "Сергей",
      patronymic: "Александрович",
      email: "esenin.sergey@mail.ru",
      docNumber: "678901",
      docSeria: "23 44"),
  User(
      id: 2,
      surname: "Толстой",
      name: "Лев",
      patronymic: "Николаевич",
      email: "lev.tolstoy@mail.ru",
      docNumber: "789012",
      docSeria: "34 56"),
];

class DB {
  List<Car> getCarList() => cars;

  Car getCarById(int index) => cars[index];

  User getUserById(int index) => users[index];
}
