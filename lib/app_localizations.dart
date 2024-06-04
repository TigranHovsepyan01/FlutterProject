import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:test_t/requestes/models/data.dart';

class AppLocalizations {

  AppLocalizations();

  Future<List<Data>> loadData({required bool isArmenian}) async {
    print("assets/localization/${isArmenian ? "hy": "en"}.json");
    String jsonString = await rootBundle.loadString('assets/localization/${isArmenian ? "hy": "en"}.json');
    print("DATA:::::  $jsonString");
    List<dynamic> jsonList = json.decode(jsonString);
    List<Data> dates = jsonList.map((json) => Data.fromJson(json)).toList();
    return dates;
  }
}



