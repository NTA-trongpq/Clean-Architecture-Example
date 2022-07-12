// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieResponse _$MovieResponseFromJson(Map<String, dynamic> json) {
  return _MovieResponse.fromJson(json);
}

/// @nodoc
class _$MovieResponseTearOff {
  const _$MovieResponseTearOff();

  _MovieResponse call(
      {@JsonKey(name: "page") int page = -1,
      @JsonKey(name: "results") List<MovieModel> movies = const [],
      @JsonKey(name: "total_pages") int totalPages = -1,
      @JsonKey(name: "total_results") int totalResults = -1}) {
    return _MovieResponse(
      page: page,
      movies: movies,
      totalPages: totalPages,
      totalResults: totalResults,
    );
  }

  MovieResponse fromJson(Map<String, Object?> json) {
    return MovieResponse.fromJson(json);
  }
}

/// @nodoc
const $MovieResponse = _$MovieResponseTearOff();

/// @nodoc
mixin _$MovieResponse {
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  List<MovieModel> get movies => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "total_results")
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResponseCopyWith<MovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResponseCopyWith<$Res> {
  factory $MovieResponseCopyWith(
          MovieResponse value, $Res Function(MovieResponse) then) =
      _$MovieResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "results") List<MovieModel> movies,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class _$MovieResponseCopyWithImpl<$Res>
    implements $MovieResponseCopyWith<$Res> {
  _$MovieResponseCopyWithImpl(this._value, this._then);

  final MovieResponse _value;
  // ignore: unused_field
  final $Res Function(MovieResponse) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? movies = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MovieResponseCopyWith<$Res>
    implements $MovieResponseCopyWith<$Res> {
  factory _$MovieResponseCopyWith(
          _MovieResponse value, $Res Function(_MovieResponse) then) =
      __$MovieResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "results") List<MovieModel> movies,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class __$MovieResponseCopyWithImpl<$Res>
    extends _$MovieResponseCopyWithImpl<$Res>
    implements _$MovieResponseCopyWith<$Res> {
  __$MovieResponseCopyWithImpl(
      _MovieResponse _value, $Res Function(_MovieResponse) _then)
      : super(_value, (v) => _then(v as _MovieResponse));

  @override
  _MovieResponse get _value => super._value as _MovieResponse;

  @override
  $Res call({
    Object? page = freezed,
    Object? movies = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_MovieResponse(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_MovieResponse with DiagnosticableTreeMixin implements _MovieResponse {
  const _$_MovieResponse(
      {@JsonKey(name: "page") this.page = -1,
      @JsonKey(name: "results") this.movies = const [],
      @JsonKey(name: "total_pages") this.totalPages = -1,
      @JsonKey(name: "total_results") this.totalResults = -1});

  factory _$_MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MovieResponseFromJson(json);

  @override
  @JsonKey(name: "page")
  final int page;
  @override
  @JsonKey(name: "results")
  final List<MovieModel> movies;
  @override
  @JsonKey(name: "total_pages")
  final int totalPages;
  @override
  @JsonKey(name: "total_results")
  final int totalResults;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieResponse(page: $page, movies: $movies, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MovieResponse'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('movies', movies))
      ..add(DiagnosticsProperty('totalPages', totalPages))
      ..add(DiagnosticsProperty('totalResults', totalResults));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieResponse &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.movies, movies) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(movies),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalResults));

  @JsonKey(ignore: true)
  @override
  _$MovieResponseCopyWith<_MovieResponse> get copyWith =>
      __$MovieResponseCopyWithImpl<_MovieResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieResponseToJson(this);
  }
}

abstract class _MovieResponse implements MovieResponse {
  const factory _MovieResponse(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "results") List<MovieModel> movies,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults}) = _$_MovieResponse;

  factory _MovieResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieResponse.fromJson;

  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "results")
  List<MovieModel> get movies;
  @override
  @JsonKey(name: "total_pages")
  int get totalPages;
  @override
  @JsonKey(name: "total_results")
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$MovieResponseCopyWith<_MovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
