import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:tmdb_web/widgets/movie_card_item.dart';

class TrailerSection extends StatelessWidget {
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
                  image: NetworkImage(
                      "https://external-preview.redd.it/N-aZmTD_HYdfSxtVe5AhnoIemwgXxxqbuu2I6ik5nsM.jpg?auto=webp&s=80d68c17706fde782b5ea1debf1557d649752eb3"))),
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
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Trailers',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
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
      height: 200,
      child: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, count) => Column(
                children: [
                  MovieCardItem(
                    stackChild: Center(
                        child: SizedBox(
                            height: 40, child: Image.asset("images/play.png"))),
                  ),
                  Text(
                    faker.person.firstName(),
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    faker.lorem.words(5).toString(),
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )),
    );
  }
}
