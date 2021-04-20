// import 'package:better_player/better_player.dart';
// import 'package:flutter/cupertino.dart';
//
// class VideoScreen extends StatefulWidget {
//   @override
//   _VideoScreen createState() => _VideoScreen();
// }
//
// class _VideoScreen extends State<VideoScreen> {
//
//   List<BetterPlayerDataSource> createDataSet() {
//     List dataSourceList = List<BetterPlayerDataSource>();
//     dataSourceList.add(
//       BetterPlayerDataSource(
//         BetterPlayerDataSourceType.network,
//         "https://www.youtube.com/watch?v=NrXdauEv9HY",
//       ),
//     );
//     dataSourceList.add(
//       BetterPlayerDataSource(BetterPlayerDataSourceType.network,
//           "https://www.youtube.com/watch?v=NrXdauEv9HY"),
//     );
//     dataSourceList.add(
//       BetterPlayerDataSource(BetterPlayerDataSourceType.network,
//           "https://www.youtube.com/watch?v=NrXdauEv9HY"),
//     );
//     return dataSourceList;
//   }
//   @override
//   Widget build(BuildContext context)
//   {
//     return AspectRatio(
//       aspectRatio: 16 / 9,
//       child: BetterPlayerPlaylist(
//           betterPlayerConfiguration: BetterPlayerConfiguration(),
//           betterPlayerPlaylistConfiguration: const BetterPlayerPlaylistConfiguration(),
//           betterPlayerDataSourceList: createDataSet()),
//     );
//   }
//
// }