import 'dart:async';
import 'dart:ui';
import 'package:fluttertube/api.dart';
import 'package:fluttertube/models/video.dart';

/*class VideosBloc implements BlocBase {
  late Api api;

  List<Video> videos = [];

  final StreamController _videosController = StreamController();
  Stream get outVideos => _videosController.stream;

  final StreamController _searchController = StreamController();
  Sink get inSearch => _searchController.sink;

  VideosBloc() {
    api = Api();

    _searchController.stream.listen((event) {
      _search;
    });
  }

  void _search(String search) async {
    videos = await api.search(search);
    print(videos);
  }

  @override
  void addListener(VoidCallback listener) {
    // TODO: implement addListener
  }

  @override
  void dispose() {
    _videosController.close();
    _searchController.close();
  }

  @override
  // TODO: implement hasListeners
  bool get hasListeners => throw UnimplementedError();

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
  }

  @override
  void removeListener(VoidCallback listener) {
    // TODO: implement removeListener
  }
}*/
