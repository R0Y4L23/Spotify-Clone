// ignore_for_file: unused_element, file_names

import "package:flutter/material.dart";

class AlbumMusicComponent extends StatelessWidget {
  const AlbumMusicComponent({Key? key, required this.song}) : super(key: key);

  final Map song;

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
        Navigator.pushReplacementNamed(context, '/song');
      },
      child: ListTile(
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
            size: adjustedWidth(7),
          ),
        ),
        title: Text(
          song["name"],
          style: TextStyle(fontSize: adjustedWidth(5), color: Colors.white),
        ),
        subtitle: Text(
          song["artist"],
          style: TextStyle(fontSize: adjustedWidth(4), color: Colors.grey),
        ),
      ),
    );
  }
}
