// import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:youtube_player/youtube_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videoplayer extends StatefulWidget {
  @override
  _Videoplayer createState() => _Videoplayer();
}

class _Videoplayer extends State<Videoplayer> {

  YoutubePlayerController _controller;
  YoutubePlayerController _c;
  void playvideo()
  {
    _controller=YoutubePlayerController(
     initialVideoId:YoutubePlayer.convertUrlToId("https://youtu.be/PqFMFVcCZgI "),
        flags: YoutubePlayerFlags(
        enableCaption: false,
          autoPlay: false,
    ),
    );
  }

  @override
  void initState()
  {
    playvideo();
    super.initState();
  }

  @override
void dispose()
{
  _controller.dispose();
  _c.dispose();
   super.dispose();
}

  @override
  void deactivate()
  {
    _controller.pause();
    _c.pause();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
      ),
      builder: (context , player) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Demo"),
       ),
       body: Center(
         child: ListView(
           scrollDirection: Axis.vertical,
           padding: EdgeInsets.all(16),
           children: [
             Card(

               color: Colors.yellowAccent,
               child: player,
             ),
             Card(
               color: Colors.green,
               child: YoutubePlayer(
                 controller:YoutubePlayerController(
                   initialVideoId:YoutubePlayer.convertUrlToId("https://youtu.be/NbyHNASFi6U"),
                   flags: YoutubePlayerFlags(
                     enableCaption: false,
                     autoPlay: false,
                   ),
                 ),
               ),
             ),
             Card(
               color: Colors.green,
               child: YoutubePlayer(
                 controller:YoutubePlayerController(
                   initialVideoId:YoutubePlayer.convertUrlToId("https://youtu.be/NbyHNASFi6U"),
                   flags: YoutubePlayerFlags(
                     enableCaption: false,
                     autoPlay: false,
                   ),
                 ),
               ),
             ),
             Card(
               color: Colors.green,
               child: YoutubePlayer(
                 controller:YoutubePlayerController(
                   initialVideoId:YoutubePlayer.convertUrlToId("https://youtu.be/NbyHNASFi6U"),
                   flags: YoutubePlayerFlags(
                     enableCaption: false,
                     autoPlay: false,
                   ),
                 ),
               ),
             ),
             Card(
               color: Colors.black87,
               child: YoutubePlayer(
                 controller:YoutubePlayerController(
                   initialVideoId:YoutubePlayer.convertUrlToId("https://youtu.be/NbyHNASFi6U"),
                   flags: YoutubePlayerFlags(
                     enableCaption: false,
                     autoPlay: false,
                   ),
                 ),
               ),
             ),




           ],
         ),
         // child: Column(
         //   mainAxisAlignment: MainAxisAlignment.start,
         //   children: <Widget>[
         //     player,
         //     Text(
         //       "ABC"
         //     ),
         //
         //   ],
         // ),
       ),
     );
      },
    );
  }
}