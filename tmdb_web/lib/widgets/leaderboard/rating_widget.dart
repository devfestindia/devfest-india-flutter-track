import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tmdb_web/models/ratings.dart';

class RatingWidget extends StatelessWidget {
  final Ratings ratings;
  RatingWidget(this.ratings);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LinearPercentIndicator(
          width: MediaQuery.of(context).size.width >= 1000 ? 300.0 : 100.0,
          animation: true,
          lineHeight: 8.0,
          animationDuration: 2500,
          percent: ratings.totalEditPercentage,
          trailing: Text(
            ratings.totalEditValue,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          linearStrokeCap: LinearStrokeCap.roundAll,
          linearGradient: LinearGradient(
            colors: [
              const Color(0xFF2FD9AD),
              const Color(0xFFB3FBCC),
            ],
            begin: Alignment.centerRight,
            end: new Alignment(-1.0, -1.0),
          ),
          backgroundColor: Colors.white,
        ),
        LinearPercentIndicator(
          width: MediaQuery.of(context).size.width >= 1000 ? 200.0 : 100.0,
          animation: true,
          lineHeight: 8.0,
          animationDuration: 2500,
          percent: ratings.weeklyEditPercentage,
          trailing: Text(
            ratings.weeklyEditValue,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          linearStrokeCap: LinearStrokeCap.roundAll,
          linearGradient: LinearGradient(
            colors: [
              const Color(0xFFdf4f65),
              const Color(0xFFfcbd6f),
            ],
            begin: Alignment.centerRight,
            end: new Alignment(-1.0, -1.0),
          ),
          backgroundColor: Colors.white,
        )
      ],
    );
  }
}
