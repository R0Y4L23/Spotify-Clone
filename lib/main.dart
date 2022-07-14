import 'package:flutter/material.dart';
import "./home.dart";
import "./album.dart";
import "./search.dart";
import "./song.dart";
import "./library.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/album": (context) => Album(),
        "/search": (context) => Search(),
        "/song": (context) => Song(),
        "/library": (context) => Library(),
      },
    );
  }
}
