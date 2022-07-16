// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class Song extends StatefulWidget {
  Song({Key? key}) : super(key: key);

  @override
  State<Song> createState() => _SongState();
}

class _SongState extends State<Song> {
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
          colors: [Colors.red.shade900, Colors.black, Colors.grey.shade900],
          stops: [0.001, 0.4, 0.8],
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: adjustedHeight(2),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, "/album");
                            },
                            icon: Icon(Icons.arrow_drop_down,
                                color: Colors.white, size: adjustedWidth(7))),
                        SizedBox(width: adjustedWidth(2)),
                        Text("Song radio based on".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: adjustedWidth(2.5),
                                letterSpacing: 2)),
                        SizedBox(width: adjustedWidth(2)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert,
                                color: Colors.white, size: adjustedWidth(7))),
                      ],
                    ),
                    Image.asset("assets/bad_liar.png",
                        height: adjustedHeight(30), width: adjustedWidth(100)),
                    SizedBox(
                      height: adjustedHeight(4),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: adjustedWidth(5)),
                      child: Text(
                        "Bad Liar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: adjustedWidth(6),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: adjustedWidth(5)),
                      child: Text(
                        "Imagine Dragons",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: adjustedWidth(5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: adjustedHeight(4),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.skip_previous,
                                color: Colors.white, size: adjustedWidth(7))),
                        SizedBox(width: adjustedWidth(2)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.play_arrow,
                                color: Colors.white, size: adjustedWidth(7))),
                        SizedBox(width: adjustedWidth(2)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.pause,
                                color: Colors.white, size: adjustedWidth(7))),
                        SizedBox(width: adjustedWidth(2)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.stop,
                                color: Colors.white, size: adjustedWidth(7))),
                        SizedBox(width: adjustedWidth(2)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.skip_next,
                                color: Colors.white, size: adjustedWidth(7))),
                      ],
                    ),
                    ListTile(
                        leading: Icon(Icons.favorite, color: Colors.white),
                        trailing: SizedBox(
                          width: adjustedWidth(28),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.playlist_add,
                                      color: Colors.white,
                                      size: adjustedWidth(7))),
                              SizedBox(width: adjustedWidth(1)),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.more_vert,
                                      color: Colors.white,
                                      size: adjustedWidth(7))),
                            ],
                          ),
                        )),
                  ],
                ))));
  }
}
