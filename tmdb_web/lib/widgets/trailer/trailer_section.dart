import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/trailer/trailer_content.dart';

class TrailerSection extends StatelessWidget {
  final String trailerBg =
      "https://image.tmdb.org/t/p/w1920_and_h427_multi_faces/bxZrG6wsmKMoUC1q4ByTWDRHaOh.jpg";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.8), BlendMode.darken),
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(trailerBg))),
        ),
        TrailerContent(),
      ],
    );
  }
}
