import 'package:clean_tdd/features/data/models/movie/movie_response.dart';
import 'package:clean_tdd/features/domain/entities/movie/movie.dart';
import 'package:clean_tdd/features/domain/use_cases/cinema/cinema_use_cases.dart';
import 'package:clean_tdd/features/presentation/pages/cinema/bloc/cinema_event.dart';
import 'package:clean_tdd/features/presentation/pages/cinema/bloc/cinema_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CinemaBloc extends Bloc<CinemaEvent, CinemaState> {
  final CinemaUseCase useCase;

  CinemaBloc(this.useCase) : super(const CinemaState()) {
    on<GetCinema>(getCinema);
    on<LoadMoreCinema>(loadMore);
  }

  Future<void> getCinema(GetCinema event, Emitter<CinemaState> emitter) async {
    emitter(state.copyWith(status: CinemaStatus.loading));
    try {
      final response = await useCase.getCinema();
      final films = _convertModelToEntity(response);
      return emitter(
        state.copyWith(
          status: CinemaStatus.hasResult,
          films: films,
          page: response.page,
          hasNextPage: response.page == response.totalPages ? false : true,
        ),
      );
    } catch (e) {
      emitter(state.copyWith(status: CinemaStatus.hasError));
      rethrow;
    }
  }

  List<Movie> _convertModelToEntity(MovieResponse response) {
    final List<Movie> movies = [];
    for (var element in response.movies) {
      movies.add(
        Movie(
          element.backdropPath,
          element.id,
          element.originalTitle,
          element.overview,
          element.popularity,
          element.posterPath,
          element.releaseDate,
          element.voteAverage,
          element.voteCount,
        ),
      );
    }
    return movies;
  }

  Future<void> loadMore(LoadMoreCinema event, Emitter<CinemaState> emitter) async {
    if (!state.hasNextPage) {
      return;
    }
    emitter(state.copyWith(
      status: CinemaStatus.loading,
    ));
    final response = await useCase.getCinema(page: state.page + 1);
    final films = _convertModelToEntity(response);
    return emitter(state.copyWith(
      status: CinemaStatus.hasResult,
      films: [...state.films, ...films ],
      page: response.page,
      hasNextPage: response.page == response.totalPages ? false : true,
    ));
  }
}
