import 'package:tmdb_web/models/trending_movie.dart';
import 'package:tmdb_web/services/api_service.dart';

class Repository {
  IAPIService _apiService;
  Repository(
    this._apiService,
  );

  Future<List<TrendingMovie>> fetchTrendingMovies() =>
      _apiService.fetchTrendingMovies();
}
