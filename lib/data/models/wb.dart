class WB {
  int id = 0;
  int driverId = 0;
  DateTime docDate = DateTime.parse('1980-01-01');
  double probegBegin = 0.0;
  double probegEnd = 0.0;
  DateTime timeBegin = DateTime.parse('1980-01-01');
  DateTime timeEnd = DateTime.parse('1980-01-01');
  double toplivoBegin = 0.0;
  double toplivoEnd = 0.0;
  double zapravka = 0.0;
  double rashod = 0.0;

  WB(
      {required this.id,
      required this.driverId,
      required this.docDate,
      required this.timeBegin,
      required this.timeEnd,
      this.probegBegin = 0.0,
      this.probegEnd = 0.0,
      this.toplivoBegin = 0.0,
      this.toplivoEnd = 0.0,
      this.zapravka = 0.0}) {
    rashod = calcRashod(probegBegin, probegEnd);
  }

  WB.fromJson(Map<String, dynamic> json) {
    if (json.isEmpty) {
      id = 0;
      driverId = 0;
      docDate = DateTime.now();
      timeBegin = DateTime.now();
      timeEnd = DateTime.now();
      probegBegin = 0.0;
      probegEnd = 0.0;
      toplivoBegin = 0.0;
      toplivoEnd = 0.0;
      zapravka = 0.0;
    } else {
      id = json['id'];
      driverId = json['driver_id'];
      docDate = DateTime.parse(json['doc_date']);
      timeBegin = DateTime.parse(json['time_begin']);
      timeEnd = DateTime.parse(json['time_end']);
      probegBegin = json['probeg_begin'] ?? 0.0;
      probegEnd = json['probeg_end'] ?? 0.0;
      toplivoBegin = json['toplivo_begin'] ?? 0.0;
      toplivoEnd = json['toplivo_end'] ?? 0.0;
      zapravka = json['zapravka'] ?? 0.0;
    }
    rashod = calcRashod(probegBegin, probegEnd);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'driver_id': driverId,
        'doc_date': docDate.toString(),
        'time_begin': timeBegin.toString(),
        'time_end': timeEnd.toString(),
        'probeg_begin': probegBegin,
        'probeg_end': probegEnd,
        'toplivo_begin': toplivoBegin,
        'toplivo_end': toplivoEnd,
        'zapravka': zapravka
      };

  double calcRashod(double probegBegin, double probegEnd) {
    return (probegEnd - probegBegin) < 0.0 ? 0.0 : (probegEnd - probegBegin);
  }

  bool isEmptyDocDate() {
    return docDate == DateTime.parse('1980-01-01');
  }
}
