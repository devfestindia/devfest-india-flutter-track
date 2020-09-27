import 'package:tmdb_web/models/trending_movie.dart';
import 'package:tmdb_web/services/api_service.dart';

class Repository {
  IAPIService apiService;
  Repository({
    this.apiService,
  });

  Future<TrendingMovie> fetchTrendingMovies() =>
      apiService.fetchTrendingMovies();
}
