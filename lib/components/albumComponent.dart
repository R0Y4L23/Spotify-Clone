// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers

import "package:flutter/material.dart";

class AlbumComponent extends StatelessWidget {
  const AlbumComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dWidth = MediaQuery.of(context).size.width;
    var dHeight = MediaQuery.of(context).size.height;
    double adjustedWidth(double percent) {
      return dWidth * (percent / 100);
    }

    double adjustedHeight(double percent) {
      return dHeight * (percent / 100);
    }

    return InkWell(
        onTap: () {
          Navigator.pushReplacementNamed(context, "/album");
        },
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "assets/locked_away.png",
                  width: adjustedWidth(40),
                  height: adjustedHeight(20),
                ),
                SizedBox(
                  height: adjustedHeight(1),
                ),
                Text(
                  "Locked Away",
                  style: TextStyle(
                      fontSize: adjustedWidth(4),
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: adjustedWidth(40),
                  child: Text(
                    "Album . Adam Levine , Rock City",
                    style: TextStyle(
                        fontSize: adjustedWidth(4),
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600),
                  ),
                ),
              ],
            )));
  }
}
