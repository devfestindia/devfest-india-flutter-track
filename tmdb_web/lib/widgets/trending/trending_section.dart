import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:tmdb_web/widgets/movie_card_item.dart';
import 'package:tmdb_web/widgets/trending/trending_card_list.dart';

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
          TrendingCardList(),
        ],
      ),
    );
  }
}
