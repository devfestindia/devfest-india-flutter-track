import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/leaderboard/leader_details_tile.dart';
import 'package:tmdb_web/widgets/leaderboard/leader_header_tile.dart';


class LeaderBoardTile extends StatelessWidget {
  const LeaderBoardTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LeaderHeaderTile(),
        LeaderDetailsTile(),
      ],
    );
  }
}
