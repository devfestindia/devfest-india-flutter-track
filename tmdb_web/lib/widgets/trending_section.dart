import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:tmdb_web/widgets/movie_card_item.dart';

class TrendingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trending',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TrailerCardList(),
        ],
      ),
    );
  }
}

class TrailerCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          itemCount: 25,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, count) => MovieCardItem(
                height: 200,
                aspectRatio: 4.0 / 6.0,
              )),
    );
  }
}
