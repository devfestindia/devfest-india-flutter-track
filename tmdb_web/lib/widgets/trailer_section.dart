import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:tmdb_web/widgets/movie_card_item.dart';

class TrailerSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blueGrey,
          height: 220,
          width: MediaQuery.of(context).size.width,
        ),
        TrailerContent(),
      ],
    );
  }
}

class TrailerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Latest Trailers', style: TextStyle(color: Colors.white, fontSize: 25),),
          TrailerCardList(),
        ],
      ),
    );
  }
}

class TrailerCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, count) => MovieCardItem()),
    );
  }
}


