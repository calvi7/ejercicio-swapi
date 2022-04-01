import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  final String _apiLink = 'swapi.dev';

  int currentPage = 0;

  Future<String?> fetchList() async {
    currentPage++;
    var url = Uri.https(_apiLink, '/api/people/', {
      'page': '$currentPage',
    });

    if (currentPage == 9) {
      currentPage = 0;
    }

    try {
      var jsonResponse = await http.get(url);
      return jsonResponse.body;
    } catch (e) {
      debugPrint(e.toString());

      return null;
    }
  }
}
