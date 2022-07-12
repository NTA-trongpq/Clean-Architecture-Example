import 'package:clean_tdd/features/data/models/movie/movie_response.dart';
import 'package:clean_tdd/features/domain/repositories/cinema_repositories/i_cinema_repositories.dart';

class CinemaUseCase {
  final ICinemaRepositories repositories;

  CinemaUseCase(this.repositories);

  Future<MovieResponse> getCinema({int page = 1}) async {
    final result = await repositories.getTopRankingFilms(page: page);
    return result;
  }
}
