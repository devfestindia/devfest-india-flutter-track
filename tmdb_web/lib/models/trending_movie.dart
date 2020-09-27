class TrendingMovie {
  final String originalTitle, overview, posterPath, releaseDate;
  final num id, runTime;
  final num rating;
  final List genre;
  TrendingMovie(
      {this.rating,
      this.genre,
      this.releaseDate,
      this.runTime,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.id});
  factory TrendingMovie.fromJson(Map<String, dynamic> json) {
    return TrendingMovie(
        originalTitle: json['original_title'],
        overview: json['overview'],
        posterPath: json['poster_path'],
        id: json['id'],
        runTime: json['runtime'],
        genre: json['genres'],
        rating: json['vote_average']);
  }
}
