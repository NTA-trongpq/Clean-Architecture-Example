import 'package:clean_tdd/features/data/models/movie/movie_response.dart';
import 'package:clean_tdd/features/domain/repositories/cinema_repositories/i_cinema_repositories.dart';

import '../../data_sources/remote_data_sources/cinema/i_cinema_data_sources.dart';

class CinemaRepositories implements ICinemaRepositories {
  final ICinemaDataSources dataSources;

  CinemaRepositories(this.dataSources);

  @override
  Future<MovieResponse> getTopRankingFilms({int page = 1}) {
    return dataSources.getTopRankingFilms(page: page);
  }
}
