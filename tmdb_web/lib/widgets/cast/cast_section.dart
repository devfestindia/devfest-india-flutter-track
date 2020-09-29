import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:tmdb_web/screens/detail_screen.dart';
import 'package:tmdb_web/widgets/movie_card_item.dart';
import 'package:tmdb_web/widgets/trending/trending_card_list.dart';

class CastSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
      child: Container(
        color: Colors.grey[100],
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                'Series Cast',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 10,),
            TrendingCardList(),
          ],
        ),
      ),
    );
  }
}
