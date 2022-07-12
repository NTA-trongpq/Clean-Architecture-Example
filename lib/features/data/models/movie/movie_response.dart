import 'package:clean_tdd/features/data/models/movie/movie_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_response.freezed.dart';
part 'movie_response.g.dart';

@freezed
class MovieResponse with _$MovieResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MovieResponse({
    @JsonKey(name: "page") @Default(-1) int page,
    @JsonKey(name: "results") @Default([]) List<MovieModel> movies,
    @JsonKey(name: "total_pages") @Default(-1) int totalPages,
    @JsonKey(name: "total_results") @Default(-1) int totalResults,

  }) = _MovieResponse;
  
  

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}
