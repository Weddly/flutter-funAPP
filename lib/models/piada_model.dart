import 'dart:convert';

class PiadaModel {
  final String title;
  final String answer;
  PiadaModel({required this.title, required this.answer});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'answer': answer,
    };
  }

  factory PiadaModel.fromMap(Map<String, dynamic> map) {
    return PiadaModel(
      title: map['title'],
      answer: map['answer'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PiadaModel.fromJson(String source) =>
      PiadaModel.fromMap(json.decode(source));
}
