import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/trailer/trailer_section.dart';
import 'package:tmdb_web/widgets/trending/trending_section.dart';

import 'package:tmdb_web/widgets/footer/footerboard_tile.dart';
import 'package:tmdb_web/widgets/leaderboard/leaderboard_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //AppBar Section
        title: Text('TMDB'),
      ),
      body: SingleChildScrollView(
              child: Column(
          children: [
            //HomeBanner Section
            TrailerSection(),
            TrendingSection(),
            LeaderBoardTile(),
            //Footer Section
            FooterBoardTile(),
          ],
        ),
      ),
    );
  }
}
