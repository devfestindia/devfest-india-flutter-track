import 'package:flutter/material.dart';
import 'package:tmdb_web/models/ratings.dart';
import 'package:tmdb_web/widgets/leaderboard/rating_widget.dart';

class LeaderDetailsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width >= 600 ? 550.0 : 450.0,
      child: IgnorePointer(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 5.0,
          childAspectRatio:
              MediaQuery.of(context).size.width <= 800 ? 3.0 : 6.0,
          shrinkWrap: true,
          children: ratings.map<Widget>((rate) => leaderTile(rate)).toList(),
        ),
      ),
    );
  }
}

//CircleAvatar and Rating bar
leaderTile(Ratings rate) => Row(
      children: [
        InkWell(
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(rate.leaderImage),
            backgroundColor: Colors.transparent,
          ),
          onTap: () {
            //
          },
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InkWell(
            child: Text(
              rate.leaderDetails,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {},
          ),

          //RatingBar

          RatingWidget(rate),
        ]),
      ],
    );
