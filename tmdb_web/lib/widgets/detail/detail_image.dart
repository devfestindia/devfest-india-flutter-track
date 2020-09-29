import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/movie_card_item.dart';

class DetailImage extends StatelessWidget {
  final String img;

  const DetailImage({Key key, @required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: MovieCardItem(
        imageUrl: img,
        height: 450,
        aspectRatio: 4.0 / 6.0,
      ),
    );
  }
}
