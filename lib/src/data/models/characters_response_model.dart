// To parse this JSON data, do
//
//     final characterResponseModel = characterResponseModelFromMap(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'character_model.dart';

class CharacterResponse {
  CharacterResponse({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  int count;
  String next;
  dynamic previous;
  List<Character> results;

  factory CharacterResponse.fromJson(String str) =>
      CharacterResponse.fromMap(json.decode(str));

  factory CharacterResponse.fromMap(Map<String, dynamic> json) =>
      CharacterResponse(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<Character>.from(
            json["results"].map((x) => Character.fromMap(x))),
      );
}

enum Gender { MALE, N_A, FEMALE }

final genderValues = EnumValues(
    {"female": Gender.FEMALE, "male": Gender.MALE, "n/a": Gender.N_A});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    // ignore: prefer_conditional_assignment
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => MapEntry(v, k));
    }
    return reverseMap!;
  }
}
