// To parse this JSON data, do
//
//     final character = characterFromMap(jsonString);

import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'character_model.g.dart';

@HiveType(typeId: 0)
class Character {
  Character({
    required this.name,
    required this.height,
    required this.mass,
    required this.hairColor,
    required this.skinColor,
    required this.eyeColor,
    required this.birthYear,
    required this.gender,
    required this.homeworld,
    required this.films,
    required this.species,
    required this.vehicles,
    required this.starships,
    required this.created,
    required this.edited,
    required this.url,
  });

  @HiveField(0)
  String name;

  @HiveField(1)
  String height;

  @HiveField(2)
  String mass;

  @HiveField(3)
  String hairColor;

  @HiveField(4)
  String skinColor;

  @HiveField(5)
  String eyeColor;

  @HiveField(6)
  String birthYear;

  @HiveField(7)
  String gender;

  @HiveField(8)
  String homeworld;

  @HiveField(9)
  List<dynamic> species;

  @HiveField(10)
  List<String> vehicles;

  @HiveField(11)
  List<String> starships;

  @HiveField(12)
  DateTime created;

  @HiveField(13)
  DateTime edited;

  @HiveField(14)
  String url;

  @HiveField(15)
  List<String> films;

  factory Character.fromJson(String str) => Character.fromMap(json.decode(str));

  factory Character.fromMap(Map<String, dynamic> json) => Character(
        name: json["name"],
        height: json["height"],
        mass: json["mass"],
        hairColor: json["hair_color"],
        skinColor: json["skin_color"],
        eyeColor: json["eye_color"],
        birthYear: json["birth_year"],
        gender: json["gender"],
        homeworld: json["homeworld"],
        films: List<String>.from(json["films"].map((x) => x)),
        species: List<dynamic>.from(json["species"].map((x) => x)),
        vehicles: List<String>.from(json["vehicles"].map((x) => x)),
        starships: List<String>.from(json["starships"].map((x) => x)),
        created: DateTime.parse(json["created"]),
        edited: DateTime.parse(json["edited"]),
        url: json["url"],
      );
}
