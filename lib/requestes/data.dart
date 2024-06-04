import 'dart:ffi';

class DataClass{
  String type;
  String purpose;
  DateTime date;
  Bool effect;
  DataClass(this.type, this.purpose, this.date, this.effect);

  factory DataClass.fromJson(Map<String, dynamic> json) {
    return DataClass(
      json['type'],
      json['purpose'],
      DateTime.parse(json['date']),
      json['effect'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'purpose': purpose,
      'date': date.toIso8601String(),
      'effect': effect,
    };
  }

}

