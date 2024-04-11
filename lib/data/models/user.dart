class User {
  late int id;
  late String surname;
  late String name;
  late String patronymic;
  late String email;

  //driver
  late String docNumber;
  late String docSeria;
  late DateTime licenseDateBegin;
  late DateTime licenseDateEnd;

  User(
      {int? id,
      String? surname,
      String? name,
      String? patronymic,
      String? email,
      String? docNumber,
      String? docSeria,
      DateTime? licenseDateBegin,
      DateTime? licenseDateEnd}) {
    this.id = id ?? 0;
    this.surname = surname ?? '';
    this.name = name ?? '';
    this.patronymic = patronymic ?? '';
    this.email = email ?? '';
    this.docNumber = docNumber ?? '';
    this.docSeria = docSeria ?? '';
    this.licenseDateBegin = licenseDateBegin ?? DateTime.parse('1980-01-01');
    this.licenseDateEnd = licenseDateEnd ?? DateTime.parse('1980-01-01');
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json.isNotEmpty) {
      id = json['id'] ?? 0;
      surname = json['surname'] ?? '';
      name = json['name'] ?? '';
      patronymic = json['patronymic'] ?? '';
      email = json['email'] ?? '';
      docNumber = json['doc_number'] ?? '';
      docSeria = json['doc_seria'] ?? '';

      licenseDateBegin = json['license_data_begin'] != null
          ? DateTime.parse(json['license_data_begin'])
          : DateTime.parse('1980-01-01');
      licenseDateEnd = json['license_data_end'] != null
          ? DateTime.parse(json['license_data_end'])
          : DateTime.parse('1980-01-01');
    } else {
      id = 0;
      surname = '';
      name = '';
      patronymic = '';
      email = '';
      docNumber = '';
      docSeria = '';
      licenseDateBegin = DateTime.parse('1980-01-01');
      licenseDateEnd = DateTime.parse('1980-01-01');
    }
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'surname': surname,
        'name': name,
        'patronymic': patronymic,
        'email': email,
        'dor_number': docNumber,
        'doc_seria': docSeria,
        'license_date_begin': licenseDateBegin,
        'license_date_end': licenseDateEnd
      };

  // String get fullName => '$surname $name $patronymic';
  // String get Surname => surname;
  // String get Name => name;
  // String get Patronymic => patronymic;
  // String get Email => email;
  // String get DocNumber => docNumber;
  // String get DocSeria => docSeria;
  // DateTime get LicenseDataBegin => licenseDateBegin;
  // DateTime get LicenseDataEnd => licenseDateEnd;
}
