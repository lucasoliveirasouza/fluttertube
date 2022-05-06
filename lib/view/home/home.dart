
import 'package:flutter/material.dart';
import 'package:fluttertube/delegates/data_search.dart';
import 'package:fluttertube/models/video.dart';
import 'package:provider/provider.dart';

import '../../services/video_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String busca = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Videos"),
        actions: [
          Align(
            alignment: Alignment.center,
            child: Text("0"),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star),
          ),
          IconButton(
            onPressed: () async {
              String? result =
                  await showSearch(context: context, delegate: DataSearch());

              if (result != "") {
                Provider.of<VideoService>(context).search(result!);

              }
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Consumer<VideoService>(
        builder: (context, repositorio, child) {
      return ListView.separated(
          itemCount: repositorio.videoss.length,
          itemBuilder: (BuildContext contexto, int video) {
        final List<Video> tabela = repositorio.videoss;
        return ListTile(

                title: Text(tabela[video].title),
                trailing: Text(tabela[video].id.toString()),

              );
            },
            separatorBuilder: (_, __) => Divider(),
            padding: EdgeInsets.all(16),
          );
        },
      ),
    );
  }
}
