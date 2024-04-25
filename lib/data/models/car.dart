class Car {
  late int id;
  late String brand;
  late String model;
  late String gosNumber;
  late String gosRegion;

  late String markaTopliva;
  late double limintTopliva;
  late double rashodLeto;
  late double rashodZima;
  late double amount;

  Car({
    this.id = 0,
    this.brand = '',
    this.model = '',
    this.gosNumber = 'oOOOoo',
    this.gosRegion = '000',
    this.markaTopliva = '',
    this.limintTopliva = 0.0,
    this.rashodLeto = 0.0,
    this.rashodZima = 0.0,
  });

  Car.fromJson(Map<String, dynamic> json) {
    if (json.isNotEmpty) {
      id = json['id'] as int;
      brand = json['brand'] as String;
      model = json['model'] as String;
      gosNumber = json['gos_number'] as String;
      gosRegion = json['gos_region'] as String;
      markaTopliva = json['marka_topliva'] as String;
      limintTopliva = json['limit_topliva'] as double;
      rashodLeto = json['rashod_leto'] as double;
      rashodZima = json['rashod_zima'] as double;
    } else {
      id = 0;
      brand = '';
      model = '';
      gosNumber = 'oOOOoo';
      gosRegion = '000';
      markaTopliva = '';
      limintTopliva = 0.0;
      rashodLeto = 0.0;
      rashodZima = 0.0;
    }
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'brand': brand,
        'model': model,
        'gos_number': gosNumber,
        'gos_region': gosRegion,
        'marka_topliva': markaTopliva,
        'limit_topliva': limintTopliva,
        'rashod_leto': rashodLeto,
        'rashod_zima': rashodZima,
      };
}
