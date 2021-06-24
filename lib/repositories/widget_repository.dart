import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:widget/models/piada_model.dart';

class WidgetRepository {
  Future<List<PiadaModel>> getPiadas() async {
    final response = await rootBundle.loadString("assets/database/piadas.json");
    final list = jsonDecode(response) as List;
    final piadas = list.map((e) => PiadaModel.fromMap(e)).toList();
    return piadas;
  }
}
