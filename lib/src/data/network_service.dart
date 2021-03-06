import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  final String _apiLink = 'swapi.dev';

  Future<String?> fetchList(int page) async {
    var url = Uri.https(_apiLink, '/api/people/', {
      'page': '$page',
    });

    try {
      var jsonResponse = await http.get(url);
      return jsonResponse.body;
    } catch (e) {
      debugPrint(e.toString());

      return null;
    }
  }
}
