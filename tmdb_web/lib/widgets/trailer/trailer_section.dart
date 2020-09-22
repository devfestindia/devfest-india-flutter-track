import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/trailer/trailer_content.dart';

class TrailerSection extends StatelessWidget {
  final String trailerBg =
      "https://external-preview.redd.it/N-aZmTD_HYdfSxtVe5AhnoIemwgXxxqbuu2I6ik5nsM.jpg?auto=webp&s=80d68c17706fde782b5ea1debf1557d649752eb3";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 270,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.8), BlendMode.luminosity),
                  fit: BoxFit.fill,
                  image: NetworkImage(trailerBg))),
        ),
        TrailerContent(),
      ],
    );
  }
}

