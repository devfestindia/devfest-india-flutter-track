class TrendingMovie {
  final String originalTitle,
      originalName,
      overview,
      posterPath,
      releaseDate,
      backdropPath;
  final num id, runTime, voteCount;
  final num rating;
  final List genre;
  TrendingMovie(
      {this.rating,
      this.genre,
      this.releaseDate,
      this.runTime,
      this.voteCount,
      this.originalTitle,
      this.originalName,
      this.overview,
      this.posterPath,
      this.backdropPath,
      this.id});
  factory TrendingMovie.fromJson(Map<String, dynamic> json) {
    return TrendingMovie(
        originalTitle: json['original_title'],
        originalName: json['original_name'],
        overview: json['overview'],
        posterPath: json['poster_path'],
        backdropPath: json['backdrop_path'],
        id: json['id'],
        runTime: json['runtime'],
        voteCount: json['vote_count'],
        genre: json['genres'],
        releaseDate: json['release_date'],
        rating: json['vote_average']);
  }
}
