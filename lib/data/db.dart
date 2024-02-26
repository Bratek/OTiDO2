import 'package:otido2/app_library.dart';

List<Car> cars = <Car>[
  Car(
    id: 0,
    brand: 'BMW',
    model: 'X5',
    number: 'т 716 тт',
    region: '716',
  ),
  Car(
    id: 1,
    brand: 'Mecedes benz',
    model: 'e500',
    number: 'o 123 aa',
    region: '116',
  ),
  Car(
    id: 2,
    brand: 'LADA',
    model: 'Largus Cross 1.6 Renault K4M',
    number: 'x 578 px',
    region: '116',
  ),
];

class DB {
  List<Car> getCarList() => cars;

  Car getCarById(int index) => cars[index];
}
