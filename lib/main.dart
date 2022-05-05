import 'package:flutter/material.dart';
import 'package:fluttertube/api.dart';
import 'package:fluttertube/view/home/home.dart';

void main() {
  Api api = Api();
  api.search("Lucas");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomeView(),
    );
  }
}
