// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieModel _$$_MovieModelFromJson(Map<String, dynamic> json) =>
    _$_MovieModel(
      backdropPath: json['backdrop_path'] as String? ?? "",
      id: json['id'] as int? ?? -1,
      originalTitle: json['original_title'] as String? ?? "",
      overview: json['overview'] as String? ?? "",
      popularity: (json['popularity'] as num?)?.toDouble() ?? -1.0,
      posterPath: json['poster_path'] as String? ?? "",
      releaseDate: json['release_date'] as String? ?? "",
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? -1.0,
      voteCount: json['vote_count'] as int? ?? -1,
    );

Map<String, dynamic> _$$_MovieModelToJson(_$_MovieModel instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
