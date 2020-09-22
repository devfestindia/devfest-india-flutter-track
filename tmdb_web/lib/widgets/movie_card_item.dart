import 'package:flutter/material.dart';
import 'package:tmdb_web/main.dart';

class MovieCardItem extends StatelessWidget {
  final double aspectRatio;
  final double height;

  MovieCardItem({this.aspectRatio, this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height ?? 120,
        child: AspectRatio(
          aspectRatio: aspectRatio ?? 9 / 4,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://img.pngio.com/movie-poster-background-editing-picsart-photo-744-free-image-movie-poster-png-480_580.jpg")),
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        ),
      ),
    );
  }
}
