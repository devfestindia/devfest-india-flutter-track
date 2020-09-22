import 'package:flutter/material.dart';
import 'package:tmdb_web/models/ratings.dart';
import 'package:tmdb_web/widgets/leaderboard/rating_widget.dart';

class LeaderDetailsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 8,
        shrinkWrap: true,
        children: ratings.map<Widget>((rate) => leaderTile(rate)).toList(),
      ),
    );
  }
}

//CircleAvatar and Rating bar
leaderTile(Ratings rate) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(rate.leaderImage),
              backgroundColor: Colors.transparent,
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              rate.leaderDetails,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            //RatingBar
            RatingWidget(rate),
          ]),
        ],
      ),
    );
