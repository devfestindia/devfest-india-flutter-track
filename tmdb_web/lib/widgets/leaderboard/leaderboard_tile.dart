import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/leaderboard/leader_details_tile.dart';
import 'package:tmdb_web/widgets/leaderboard/leader_header_tile.dart';

class LeaderBoardTile extends StatelessWidget {
  const LeaderBoardTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 36.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LeaderHeaderTile(),
          SizedBox(height: 20.0),
          LeaderDetailsTile(),
        ],
      ),
    );
  }
}
