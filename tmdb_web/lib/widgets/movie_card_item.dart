import 'package:flutter/material.dart';
import 'package:tmdb_web/main.dart';

class MovieCardItem extends StatelessWidget {
  final double aspectRatio;
  final double height;
  final Widget stackChild;
  final String imageUrl;

  MovieCardItem(
      {this.aspectRatio, this.height, this.stackChild, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height ?? 120,
        child: AspectRatio(
          aspectRatio: aspectRatio ?? 9 / 4,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(imageUrl)),
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              stackChild ?? SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
