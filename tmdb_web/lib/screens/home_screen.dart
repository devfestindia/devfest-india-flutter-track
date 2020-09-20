import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/leaderboard_tile.dart';
import 'package:tmdb_web/widgets/trailer_section.dart';
import 'package:tmdb_web/widgets/trending_section.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //AppBar Section
        title: Text('TMDB'),
      ),
      body: ListView(
        children: [
          //HomeBanner Section
          TrailerSection(),
          TrendingSection(),
          //Trending Section
          //Leaderboard Section
          LeaderBoardTile(),
          //Footer Section
        ],
      ),
    );
  }
}
