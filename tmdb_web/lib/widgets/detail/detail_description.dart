import 'package:flutter/material.dart';
import 'package:tmdb_web/models/trending_movie.dart';

class DetailDescription extends StatelessWidget {
  final TrendingMovie movie;

  const DetailDescription({Key key, @required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              movie.originalTitle,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  minRadius: 25.0,
                  child: Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  minRadius: 25.0,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  minRadius: 25.0,
                  child: Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  minRadius: 25.0,
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              movie.releaseDate,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              "Overview",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            movie.overview,
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              "David Shore",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              "Creator",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
