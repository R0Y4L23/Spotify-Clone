// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import './components/music.dart';
import "./components/albumComponent.dart";
import "./components/dashboard.dart";

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _list = ["/", "/search", "/library", "/library"];
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    Navigator.pushReplacementNamed(context, _list[index]);
  }

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
          colors: [Colors.black, Colors.grey.shade900],
        )),
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                    backgroundColor: Colors.transparent),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Search',
                    backgroundColor: Colors.transparent),
                BottomNavigationBarItem(
                    icon: Icon(Icons.library_books),
                    label: 'Your Library',
                    backgroundColor: Colors.transparent),
                BottomNavigationBarItem(
                    icon: Icon(Icons.workspace_premium),
                    label: 'Premium',
                    backgroundColor: Colors.transparent),
              ],
              currentIndex: selectedIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey.shade500,
              onTap: onItemTapped,
            ),
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: adjustedHeight(5),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Good evening",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: adjustedWidth(7),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: adjustedWidth(15),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.notification_important,
                                color: Colors.white,
                                size: adjustedWidth(7),
                              ),
                            ),
                            SizedBox(
                              width: adjustedWidth(5),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.lock_clock,
                                color: Colors.white,
                                size: adjustedWidth(7),
                              ),
                            ),
                            SizedBox(
                              width: adjustedWidth(5),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.settings,
                                color: Colors.white,
                                size: adjustedWidth(7),
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: adjustedHeight(2),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Music(
                            imageName: "locked_away.png",
                            songName: "Locked Away",
                          ),
                          SizedBox(width: adjustedWidth(5)),
                          Music(
                            imageName: "when_can_i_see_you_again.png",
                            songName: "When Can I...",
                          )
                        ],
                      ),
                      SizedBox(
                        height: adjustedHeight(2),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Music(
                            imageName: "million_ways.png",
                            songName: "Million Ways",
                          ),
                          SizedBox(width: adjustedWidth(5)),
                          Music(
                            imageName: "mine.png",
                            songName: "Mine",
                          )
                        ],
                      ),
                      SizedBox(
                        height: adjustedHeight(2),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Music(
                            imageName: "playdate.png",
                            songName: "Playdate",
                          ),
                          SizedBox(width: adjustedWidth(5)),
                          Music(
                            imageName: "bad_liar.png",
                            songName: "Bad Liar",
                          )
                        ],
                      ),
                      SizedBox(
                        height: adjustedHeight(2),
                      ),
                      Text(
                        "   Episodes For You",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: adjustedWidth(7),
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
                      SizedBox(
                        height: adjustedHeight(2),
                      ),
                      Text(
                        "   Recommended For today",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: adjustedWidth(7),
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
                      SizedBox(
                        height: adjustedHeight(2),
                      ),
                      Text(
                        "   Recently Played",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: adjustedWidth(7),
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
                    ],
                  ),
                ),
                Positioned(
                  bottom: adjustedWidth(0),
                  width: adjustedWidth(100),
                  height: adjustedHeight(11.5),
                  child: Dashboard(),
                )
              ],
            )));
  }
}
