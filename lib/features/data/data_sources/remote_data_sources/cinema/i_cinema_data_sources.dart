import '../../../models/movie/movie_response.dart';

abstract class ICinemaDataSources {
  Future<MovieResponse> getTopRankingFilms({int page});
}
