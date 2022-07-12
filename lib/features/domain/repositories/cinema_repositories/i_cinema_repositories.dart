import '../../../data/models/movie/movie_response.dart';

abstract class ICinemaRepositories {
  Future<MovieResponse> getTopRankingFilms({int page});
}
