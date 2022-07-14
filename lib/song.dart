// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import "package:flutter/material.dart";

class Song extends StatefulWidget {
  Song({Key? key}) : super(key: key);

  @override
  State<Song> createState() => _SongState();
}

class _SongState extends State<Song> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Song"),
      ),
    );
  }
}
