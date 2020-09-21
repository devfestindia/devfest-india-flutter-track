import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/leaderboard_tile.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //AppBar Section
        title: Text('TMDB'),
      ),
      body: Column(
        children: [
          //HomeBanner Section
          //Trailer Section
          //Trending Section
          //Leaderboard Section
          LeaderBoardTile(),
          //Footer Section
        ],
      ),
    );
  }
}
