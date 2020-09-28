import 'package:flutter/material.dart';
import 'package:tmdb_web/main.dart';
import 'package:tmdb_web/models/trending_movie.dart';
import 'package:tmdb_web/utils/utility.dart';
import 'package:tmdb_web/widgets/movie_card_item.dart';

class TrailerCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: FutureBuilder<List<TrendingMovie>>(
          future: repo.fetchDiscoverMovies(),
          builder: (BuildContext context,
              AsyncSnapshot<List<TrendingMovie>> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final movie = snapshot.data[index];
                      return Column(
                        children: [
                          MovieCardItem(
                            imageUrl: getPosterImage(movie.posterPath),
                            stackChild: Center(
                                child: SizedBox(
                                    height: 40,
                                    child: Image.asset("images/play.png"))),
                          ),
                          SizedBox(height: 10),
                          Text(
                            movie.originalName,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            movie.rating.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )
                        ],
                      );
                    });
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
            }

            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
