import 'package:flutter/material.dart';
import 'package:tmdb_web/main.dart';
import 'package:tmdb_web/models/trending_movie.dart';
import 'package:tmdb_web/utils/utility.dart';
import 'package:tmdb_web/widgets/movie_card_item.dart';

class TrendingCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280,
        child: FutureBuilder<List<TrendingMovie>>(
          future: repo.fetchTrendingMovies(),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MovieCardItem(
                            imageUrl: getPosterImage(movie.posterPath),
                            height: 200,
                            aspectRatio: 4.0 / 6.0,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie.originalTitle,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('${movie.releaseDate}')
                              ],
                            ),
                          ),
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
