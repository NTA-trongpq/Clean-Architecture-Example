// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
class _$MovieModelTearOff {
  const _$MovieModelTearOff();

  _MovieModel call(
      {@JsonKey(name: "backdrop_path") String backdropPath = "",
      @JsonKey(name: "id") int id = -1,
      @JsonKey(name: "original_title") String originalTitle = "",
      @JsonKey(name: "overview") String overview = "",
      @JsonKey(name: "popularity") double popularity = -1.0,
      @JsonKey(name: "poster_path") String posterPath = "",
      @JsonKey(name: "release_date") String releaseDate = "",
      @JsonKey(name: "vote_average") double voteAverage = -1.0,
      @JsonKey(name: "vote_count") int voteCount = -1}) {
    return _MovieModel(
      backdropPath: backdropPath,
      id: id,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }

  MovieModel fromJson(Map<String, Object?> json) {
    return MovieModel.fromJson(json);
  }
}

/// @nodoc
const $MovieModel = _$MovieModelTearOff();

/// @nodoc
mixin _$MovieModel {
  @JsonKey(name: "backdrop_path")
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "popularity")
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_count")
  int get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "backdrop_path") String backdropPath,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_title") String originalTitle,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "popularity") double popularity,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "vote_count") int voteCount});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res> implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  final MovieModel _value;
  // ignore: unused_field
  final $Res Function(MovieModel) _then;

  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(
          _MovieModel value, $Res Function(_MovieModel) then) =
      __$MovieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "backdrop_path") String backdropPath,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_title") String originalTitle,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "popularity") double popularity,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "vote_count") int voteCount});
}

/// @nodoc
class __$MovieModelCopyWithImpl<$Res> extends _$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(
      _MovieModel _value, $Res Function(_MovieModel) _then)
      : super(_value, (v) => _then(v as _MovieModel));

  @override
  _MovieModel get _value => super._value as _MovieModel;

  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_MovieModel(
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_MovieModel with DiagnosticableTreeMixin implements _MovieModel {
  const _$_MovieModel(
      {@JsonKey(name: "backdrop_path") this.backdropPath = "",
      @JsonKey(name: "id") this.id = -1,
      @JsonKey(name: "original_title") this.originalTitle = "",
      @JsonKey(name: "overview") this.overview = "",
      @JsonKey(name: "popularity") this.popularity = -1.0,
      @JsonKey(name: "poster_path") this.posterPath = "",
      @JsonKey(name: "release_date") this.releaseDate = "",
      @JsonKey(name: "vote_average") this.voteAverage = -1.0,
      @JsonKey(name: "vote_count") this.voteCount = -1});

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelFromJson(json);

  @override
  @JsonKey(name: "backdrop_path")
  final String backdropPath;
  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "original_title")
  final String originalTitle;
  @override
  @JsonKey(name: "overview")
  final String overview;
  @override
  @JsonKey(name: "popularity")
  final double popularity;
  @override
  @JsonKey(name: "poster_path")
  final String posterPath;
  @override
  @JsonKey(name: "release_date")
  final String releaseDate;
  @override
  @JsonKey(name: "vote_average")
  final double voteAverage;
  @override
  @JsonKey(name: "vote_count")
  final int voteCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieModel(backdropPath: $backdropPath, id: $id, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MovieModel'))
      ..add(DiagnosticsProperty('backdropPath', backdropPath))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('originalTitle', originalTitle))
      ..add(DiagnosticsProperty('overview', overview))
      ..add(DiagnosticsProperty('popularity', popularity))
      ..add(DiagnosticsProperty('posterPath', posterPath))
      ..add(DiagnosticsProperty('releaseDate', releaseDate))
      ..add(DiagnosticsProperty('voteAverage', voteAverage))
      ..add(DiagnosticsProperty('voteCount', voteCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieModel &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(originalTitle),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(voteCount));

  @JsonKey(ignore: true)
  @override
  _$MovieModelCopyWith<_MovieModel> get copyWith =>
      __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelToJson(this);
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {@JsonKey(name: "backdrop_path") String backdropPath,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_title") String originalTitle,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "popularity") double popularity,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "vote_count") int voteCount}) = _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  @JsonKey(name: "backdrop_path")
  String get backdropPath;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "original_title")
  String get originalTitle;
  @override
  @JsonKey(name: "overview")
  String get overview;
  @override
  @JsonKey(name: "popularity")
  double get popularity;
  @override
  @JsonKey(name: "poster_path")
  String get posterPath;
  @override
  @JsonKey(name: "release_date")
  String get releaseDate;
  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;
  @override
  @JsonKey(name: "vote_count")
  int get voteCount;
  @override
  @JsonKey(ignore: true)
  _$MovieModelCopyWith<_MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}
