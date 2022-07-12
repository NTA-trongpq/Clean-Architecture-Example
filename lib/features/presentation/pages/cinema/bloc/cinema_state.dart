import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/movie/movie.dart';

part 'cinema_state.freezed.dart';


@freezed
class CinemaState with _$CinemaState {
  const factory CinemaState({
    @Default([]) List<Movie> films,
    @Default(CinemaStatus.initial) CinemaStatus status,
    @Default(1) int page,
    @Default(false) bool hasNextPage,
  }) = _CinemaState;


}

enum CinemaStatus {
  initial,
  loading,
  hasResult,
  hasError,
}
