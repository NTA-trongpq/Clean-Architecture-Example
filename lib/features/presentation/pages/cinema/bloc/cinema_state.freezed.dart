// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cinema_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CinemaStateTearOff {
  const _$CinemaStateTearOff();

  _CinemaState call(
      {List<Movie> films = const [],
      CinemaStatus status = CinemaStatus.initial,
      int page = 1,
      bool hasNextPage = false}) {
    return _CinemaState(
      films: films,
      status: status,
      page: page,
      hasNextPage: hasNextPage,
    );
  }
}

/// @nodoc
const $CinemaState = _$CinemaStateTearOff();

/// @nodoc
mixin _$CinemaState {
  List<Movie> get films => throw _privateConstructorUsedError;
  CinemaStatus get status => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CinemaStateCopyWith<CinemaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CinemaStateCopyWith<$Res> {
  factory $CinemaStateCopyWith(
          CinemaState value, $Res Function(CinemaState) then) =
      _$CinemaStateCopyWithImpl<$Res>;
  $Res call(
      {List<Movie> films, CinemaStatus status, int page, bool hasNextPage});
}

/// @nodoc
class _$CinemaStateCopyWithImpl<$Res> implements $CinemaStateCopyWith<$Res> {
  _$CinemaStateCopyWithImpl(this._value, this._then);

  final CinemaState _value;
  // ignore: unused_field
  final $Res Function(CinemaState) _then;

  @override
  $Res call({
    Object? films = freezed,
    Object? status = freezed,
    Object? page = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_value.copyWith(
      films: films == freezed
          ? _value.films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CinemaStatus,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CinemaStateCopyWith<$Res>
    implements $CinemaStateCopyWith<$Res> {
  factory _$CinemaStateCopyWith(
          _CinemaState value, $Res Function(_CinemaState) then) =
      __$CinemaStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Movie> films, CinemaStatus status, int page, bool hasNextPage});
}

/// @nodoc
class __$CinemaStateCopyWithImpl<$Res> extends _$CinemaStateCopyWithImpl<$Res>
    implements _$CinemaStateCopyWith<$Res> {
  __$CinemaStateCopyWithImpl(
      _CinemaState _value, $Res Function(_CinemaState) _then)
      : super(_value, (v) => _then(v as _CinemaState));

  @override
  _CinemaState get _value => super._value as _CinemaState;

  @override
  $Res call({
    Object? films = freezed,
    Object? status = freezed,
    Object? page = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_CinemaState(
      films: films == freezed
          ? _value.films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CinemaStatus,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CinemaState with DiagnosticableTreeMixin implements _CinemaState {
  const _$_CinemaState(
      {this.films = const [],
      this.status = CinemaStatus.initial,
      this.page = 1,
      this.hasNextPage = false});

  @JsonKey()
  @override
  final List<Movie> films;
  @JsonKey()
  @override
  final CinemaStatus status;
  @JsonKey()
  @override
  final int page;
  @JsonKey()
  @override
  final bool hasNextPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CinemaState(films: $films, status: $status, page: $page, hasNextPage: $hasNextPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CinemaState'))
      ..add(DiagnosticsProperty('films', films))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('hasNextPage', hasNextPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CinemaState &&
            const DeepCollectionEquality().equals(other.films, films) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.hasNextPage, hasNextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(films),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(hasNextPage));

  @JsonKey(ignore: true)
  @override
  _$CinemaStateCopyWith<_CinemaState> get copyWith =>
      __$CinemaStateCopyWithImpl<_CinemaState>(this, _$identity);
}

abstract class _CinemaState implements CinemaState {
  const factory _CinemaState(
      {List<Movie> films,
      CinemaStatus status,
      int page,
      bool hasNextPage}) = _$_CinemaState;

  @override
  List<Movie> get films;
  @override
  CinemaStatus get status;
  @override
  int get page;
  @override
  bool get hasNextPage;
  @override
  @JsonKey(ignore: true)
  _$CinemaStateCopyWith<_CinemaState> get copyWith =>
      throw _privateConstructorUsedError;
}
