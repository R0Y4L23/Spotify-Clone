// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import "package:flutter/material.dart";
import "./components/albumMusicComponent.dart";
import "./components/albumComponent.dart";

class Album extends StatefulWidget {
  Album({Key? key}) : super(key: key);

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  List songs = [
    {"name": "Dreams", "artist": 'Bazzi'},
    {"name": "Soarin", "artist": 'Bazzi'},
    {"name": "Myself", "artist": 'Bazzi'},
    {"name": "Star", "artist": 'Bazzi'},
    {"name": "Why", "artist": 'Bazzi'},
  ];
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

    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.green.shade900, Colors.black, Colors.grey.shade900],
          stops: [0.001, 0.4, 0.8],
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: adjustedHeight(2),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: adjustedHeight(5)),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, "/");
                            },
                          ),
                        ),
                        Image.asset(
                          "assets/mine.png",
                          height: adjustedHeight(40),
                          width: adjustedWidth(80),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: adjustedWidth(8)),
                      child: Text(
                        "COSMIC",
                        style: TextStyle(
                            fontSize: adjustedWidth(8), color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: adjustedWidth(8), top: adjustedHeight(1)),
                      child: Text(
                        "Bazzi",
                        style: TextStyle(
                            fontSize: adjustedWidth(4), color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: adjustedWidth(8), top: adjustedHeight(1)),
                      child: Text(
                        "Album . 2018",
                        style: TextStyle(
                            fontSize: adjustedWidth(4), color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: adjustedHeight(2)),
                    Row(
                      children: [
                        SizedBox(
                          width: adjustedWidth(5),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: adjustedWidth(7),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: adjustedWidth(7),
                          ),
                        ),
                        SizedBox(
                          width: adjustedWidth(50),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.circular(adjustedWidth(6)),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                              size: adjustedWidth(5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: adjustedHeight(1.5)),
                    Wrap(
                      spacing: adjustedWidth(2),
                      runSpacing: adjustedHeight(0.05),
                      children: [
                        for (var song in songs)
                          AlbumMusicComponent(
                            song: song,
                          )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: adjustedWidth(4), top: adjustedHeight(1)),
                      child: Text(
                        "April 12, 2018",
                        style: TextStyle(
                            fontSize: adjustedWidth(4), color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: adjustedWidth(4), top: adjustedHeight(1)),
                      child: Text(
                        "16 songs . 42 min 8 sec",
                        style: TextStyle(
                            fontSize: adjustedWidth(4), color: Colors.white),
                      ),
                    ),
                    SizedBox(height: adjustedHeight(2)),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/mine.png"),
                        radius: adjustedWidth(5),
                      ),
                      title: Text(
                        "Bazzi",
                        style: TextStyle(
                            fontSize: adjustedWidth(4), color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: adjustedHeight(1),
                    ),
                    Text(
                      "    You might also like",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: adjustedWidth(4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: adjustedWidth(100),
                      height: adjustedHeight(38),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          AlbumComponent(),
                          AlbumComponent(),
                          AlbumComponent(),
                          AlbumComponent(),
                          AlbumComponent(),
                        ],
                      ),
                    ),
                    Text(
                      "    ?? 2018",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: adjustedWidth(4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: adjustedHeight(1),
                    )
                  ],
                ))));
  }
}
