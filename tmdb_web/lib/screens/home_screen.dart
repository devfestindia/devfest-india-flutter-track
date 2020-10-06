import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/appbar_section.dart';
import 'package:tmdb_web/widgets/banner/top_banner_card.dart';
import 'package:tmdb_web/widgets/trailer/trailer_section.dart';
import 'package:tmdb_web/widgets/trending/trending_section.dart';

import 'package:tmdb_web/widgets/footer/footerboard_tile.dart';
import 'package:tmdb_web/widgets/leaderboard/leaderboard_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        //AppBar Section
        title: CustomAppbar(),
      ),
      // @pooja I have removed the the padding, was causing exceptions -kamal
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBannerSearchCard(),
            SizedBox(
              height: 40,
            ),
            TrendingSection(),
            TrailerSection(),
            //LeaderBoard Section
            LeaderBoardTile(),
            //Footer Section
            FooterBoardTile(),
          ],
        ),
      ),
    );
  }
}
