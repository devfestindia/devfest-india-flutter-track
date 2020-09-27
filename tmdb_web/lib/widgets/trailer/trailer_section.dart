import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/trailer/trailer_content.dart';

class TrailerSection extends StatelessWidget {
  final String trailerBg =
      "https://www.wallpapertip.com/wmimgs/42-428352_movie-poster-coming-soon.jpg";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.blueGrey.withOpacity(0.4), BlendMode.lighten),
                  fit: BoxFit.cover,
                  image: NetworkImage(trailerBg))),
        ),
        TrailerContent(),
      ],
    );
  }
}

