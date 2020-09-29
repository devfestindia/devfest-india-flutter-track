import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/movie_card_item.dart';

class DetailImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: MovieCardItem(
        imageUrl:
        "https://image.tmdb.org/t/p/w300_and_h450_bestv2/53P8oHo9cfOsgb1cLxBi4pFY0ja.jpg",
        height: 450,
        aspectRatio: 4.0 / 6.0,
      ),
    );
  }
}
