import 'dart:convert';

import 'package:http/http.dart' as http;

const API_KEY = "AIzaSyDcMaGK3npChAIeIUvx5K1ht7QWxritMoQ";

class Api {
  final headers = <String, String>{};

  search(String search) async {
    http.Response response = await attemptRequest1(
        Uri.parse(
            "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$search&type=video&key=$API_KEY&maxResults=10"),
        http.get,
        headers: headers);

    decode(response);
  }

  decode(http.Response response) {
    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);
    }
  }
}

Future<http.Response> attemptRequest1(
    Uri uri,
    Future<http.Response> Function(Uri, {Map<String, String>? headers})
        requestFunction1,
    {Map<String, String>? headers}) async {
  return await requestFunction1(uri, headers: headers);
}
