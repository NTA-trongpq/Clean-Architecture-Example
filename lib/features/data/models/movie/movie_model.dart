import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';

part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MovieModel({
    @JsonKey(name: "backdrop_path") @Default("") String backdropPath,
    @JsonKey(name: "id") @Default(-1) int id,
    @JsonKey(name: "original_title") @Default("") String originalTitle,
    @JsonKey(name: "overview") @Default("") String overview,
    @JsonKey(name: "popularity") @Default(-1.0) double popularity,
    @JsonKey(name: "poster_path") @Default("") String posterPath,
    @JsonKey(name: "release_date") @Default("") String releaseDate,
    @JsonKey(name: "vote_average") @Default(-1.0) double voteAverage,
    @JsonKey(name: "vote_count") @Default(-1) int voteCount,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
