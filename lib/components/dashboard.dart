// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushReplacementNamed(context, "/song");
        },
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.pink.shade900,
              borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            leading: Image.asset("assets/playdate.png"),
            title: Text(
              "Play Date",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Melanie Martinez",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.speaker,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.start,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ));
  }
}
