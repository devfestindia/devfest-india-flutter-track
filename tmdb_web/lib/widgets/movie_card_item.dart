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
      child: Column(
        children: [
          Container(
            height: height ?? 120,
            child: AspectRatio(
              aspectRatio: aspectRatio ?? 9 / 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
          ),
          Text(faker.person.firstName()),
          Text(faker.lorem.words(5).toString())
        ],
      ),
    );
  }
}
