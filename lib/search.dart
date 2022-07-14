// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "./components/searchComponent.dart";

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<String> _list = ["/", "/search", "/library", "/library"];
  int selectedIndex = 1;
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
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  SizedBox(
                    height: adjustedHeight(5),
                  ),
                  Text(
                    "   Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: adjustedWidth(7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(adjustedHeight(2.5)),
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black,
                              size: adjustedWidth(10),
                            ),
                            SizedBox(width: adjustedWidth(2)),
                            Text(
                              'Artist,songs, or podcasts',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: adjustedWidth(4.5)),
                            )
                          ],
                        ),
                      )),
                  Text(
                    "      Your Top Genres",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: adjustedWidth(4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: adjustedHeight(3),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SearchComponent(),
                      SizedBox(width: adjustedWidth(3)),
                      SearchComponent()
                    ],
                  ),
                  SizedBox(
                    height: adjustedHeight(1.5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SearchComponent(),
                      SizedBox(width: adjustedWidth(3)),
                      SearchComponent()
                    ],
                  ),
                  SizedBox(height: adjustedHeight(6)),
                  Text(
                    "      Browse All",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: adjustedWidth(4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: adjustedHeight(3),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SearchComponent(),
                      SizedBox(width: adjustedWidth(3)),
                      SearchComponent()
                    ],
                  ),
                  SizedBox(
                    height: adjustedHeight(1.5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SearchComponent(),
                      SizedBox(width: adjustedWidth(3)),
                      SearchComponent()
                    ],
                  ),
                  SizedBox(
                    height: adjustedHeight(1.5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SearchComponent(),
                      SizedBox(width: adjustedWidth(3)),
                      SearchComponent()
                    ],
                  ),
                  SizedBox(
                    height: adjustedHeight(1.5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SearchComponent(),
                      SizedBox(width: adjustedWidth(3)),
                      SearchComponent()
                    ],
                  ),
                  SizedBox(height: adjustedHeight(10))
                ]))));
  }
}
