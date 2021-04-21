import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/Screens/video_player/exercise_screen.dart';
import 'package:gym_app/Screens/video_player/yoga_screen.dart';

import 'excersises_screen.dart';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreen createState() => _VideoScreen();
}

class _VideoScreen extends State<VideoScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Training Section"),
      ),
      body: Container(
        color: Colors.cyanAccent,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(30),
          children: [
            ListTile(
              title: Text("Gym Training"),
              subtitle: Text("A collection of  videos for doing exercises at home "),
              leading: Icon(Icons.play_arrow),
              tileColor: Colors.lightBlueAccent,
              selectedTileColor: Colors.green,
              contentPadding: EdgeInsets.all(60),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExcersiseScreen(),
                ),
              ),
            ),
            ListTile(
              title: Text("Yoga videos"),
              subtitle: Text("A collection of  yoga exercises videos "),
              leading: Icon(Icons.play_arrow),
              tileColor: Colors.lightBlueAccent,
              selectedTileColor: Colors.green,
              contentPadding: EdgeInsets.all(60),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => YogaScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

}