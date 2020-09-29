import 'package:flutter/material.dart';
import 'package:tmdb_web/models/ratings.dart';
import 'package:tmdb_web/widgets/leaderboard/rating_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class LeaderDetailsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width >= 600 ? 550.0 : 450.0,
      child: IgnorePointer(
        child: GridView.count(
          crossAxisCount: context.isMobile ? 1 : 2,
          physics: BouncingScrollPhysics(),
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
leaderTile(Ratings rate) => Padding(
      padding: const EdgeInsets.all(8.0),
      // @Kamal, removed the Expanded here, was causing exceptions - Pooja
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: InkWell(
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(rate.leaderImage),
                backgroundColor: Colors.transparent,
              ),
              onTap: () {
                //
              },
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    child: Text(
                      rate.leaderDetails,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                //RatingBar
                RatingWidget(rate),
              ]),
        ],
      ),
    );
