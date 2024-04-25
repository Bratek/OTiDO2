class Message {
  int id = 0;
  int userId = 0;
  int driverId = 0;
  String text = "";
  DateTime date = DateTime.parse('1980-01-01');
  bool isRead = false;

  Message(
      {required this.id,
      required this.userId,
      required this.driverId,
      required this.text,
      required this.date,
      this.isRead = false});

  Message.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    driverId = json['driver_id'];
    text = json['text'];
    date = DateTime.parse(json['date']);
    isRead = json['is_read'];
  }
}
