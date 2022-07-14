// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({Key? key, required this.imageName, required this.songName})
      : super(key: key);

  final String imageName;
  final String songName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(5),
      ),
      width: 160,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              "assets/$imageName",
              width: 50,
              height: 50,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            songName,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}
