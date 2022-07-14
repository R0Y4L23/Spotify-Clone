// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import "package:flutter/material.dart";

class Library extends StatefulWidget {
  Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Library"),
      ),
    );
  }
}
