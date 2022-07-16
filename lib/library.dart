// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class Library extends StatefulWidget {
  Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  final List<String> _list = ["/", "/search", "/library", "/library"];
  int selectedIndex = 2;
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
                physics: BouncingScrollPhysics(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: adjustedHeight(5),
                      ),
                      Text(
                        "   Your Library",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: adjustedWidth(7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]))));
  }
}
