import 'dart:convert';

class Data {
  final String bankName;
  final String bankLogo;
  final String title;
  final String search;
  final String type;
  final String purpose;
  final String date;
  final String effect;
  final String impacting;
  final String notImpacting;

  Data({
    required this.bankName,
    required this.bankLogo,
    required this.title,
    required this.search,
    required this.type,
    required this.purpose,
    required this.date,
    required this.effect,
    required this.impacting,
    required this.notImpacting,
  });

  // Factory constructor to create an instance from a JSON map
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      bankName: json['bankName'],
      bankLogo: json['bankLogo'],
      title: json['title'],
      search: json['search'],
      type: json['type'],
      purpose: json['purpose'],
      date: json['date'],
      effect: json['effect'],
      impacting: json['impacting'],
      notImpacting: json['notImpacting'],
    );
  }

  // Method to convert an instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'bankName': bankName,
      'bankLogo': bankLogo,
      'title': title,
      'search': search,
      'type': type,
      'purpose': purpose,
      'date': date,
      'effect': effect,
      'impacting': impacting,
      'notImpacting': notImpacting,
    };
  }
}
