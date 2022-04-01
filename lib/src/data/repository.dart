import 'package:intento_ejercicio1/src/data/models/character_model.dart';
import 'package:intento_ejercicio1/src/data/models/characters_response_model.dart';
import 'package:intento_ejercicio1/src/data/network_service.dart';

class Repository {
  final NetworkService networkService;

  Repository({required this.networkService});

  Future<List<Character>?> fetchList(int page) async {
    var rawList = await networkService.fetchList(page);

    if (rawList != null) {
      CharacterResponse characters = CharacterResponse.fromJson(rawList);

      return characters.results;
    }
    return null;
  }
}
