import 'package:uuid/uuid.dart';

final uuid = Uuid();

enum Status { A, B, C, D }

class Alert {
  Alert({required this.description, required this.status, required this.date})
      : id = uuid.v4();
  final String id;
  final String description;
  final DateTime date;
  final Status status;

  // final doctor;
  // final location;
}
