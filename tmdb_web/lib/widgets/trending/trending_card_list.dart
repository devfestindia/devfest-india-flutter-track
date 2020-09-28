import 'package:flutter/material.dart';
import 'package:tmdb_web/main.dart';
import 'package:tmdb_web/models/trending_movie.dart';
import 'package:tmdb_web/utils/utility.dart';
import 'package:tmdb_web/widgets/movie_card_item.dart';

class TrendingCardList extends StatefulWidget {
  @override
  _TrendingCardListState createState() => _TrendingCardListState();
}

class _TrendingCardListState extends State<TrendingCardList> {
  Future<List<TrendingMovie>> _future;

  @override
  void initState() {
    _future = repo.fetchTrendingMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280,
        child: FutureBuilder<List<TrendingMovie>>(
          future: _future,
          builder: (BuildContext context,
              AsyncSnapshot<List<TrendingMovie>> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final movie = snapshot.data[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MovieCardItem(
                              imageUrl: getPosterImage(movie.posterPath),
                              height: 200,
                              aspectRatio: 2 / 3,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  movie.originalTitle,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '${movie.releaseDate}',
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ],
                        ),
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
