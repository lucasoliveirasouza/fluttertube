import 'dart:convert';

import 'package:fluttertube/models/video.dart';
import 'package:http/http.dart' as http;

const API_KEY = "AIzaSyDcMaGK3npChAIeIUvx5K1ht7QWxritMoQ";

class Api {
  List<Video> videos = [];

  search(String search) async {
    String uri =
        "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$search&type=video&key=$API_KEY&maxResults=10";
    final response = await http.get(Uri.parse(uri));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      final List<dynamic> lista = json["items"];

      lista.forEach((video) {
        print(video["snippet"]["title"]);
      });
    }
    print(videos.length);
  }
}
