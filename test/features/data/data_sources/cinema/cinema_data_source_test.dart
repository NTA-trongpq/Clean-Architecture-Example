import 'dart:convert';

import 'package:clean_tdd/features/data/data_sources/remote_data_sources/cinema/cinema_data_sources.dart';
import 'package:clean_tdd/features/data/models/movie/movie_response.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cinema_data_source_test.mocks.dart';

@GenerateMocks([CinemaDataSources])
void main() {
  late MockCinemaDataSources mockCinemaDataSources;
  setUp(() {
    mockCinemaDataSources = MockCinemaDataSources();
  });

  test("Test called api is successfully?", () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    final jsonString =
        await rootBundle.loadString("test/assets/top_ranking_films.json");
    final response = MovieResponse.fromJson(jsonDecode(jsonString));
    when(mockCinemaDataSources.getTopRankingFilms())
        .thenAnswer((realInvocation) async => response);
    final result = await mockCinemaDataSources.getTopRankingFilms(page: 1);
    verify(mockCinemaDataSources.getTopRankingFilms(page: 1));
    expect(result, isA<MovieResponse>());
  });

  test("Test called api is unsuccessfully?", () async {
    when(mockCinemaDataSources.getTopRankingFilms(page: 1))
        .thenThrow(Exception("Force throw exception"));
    verifyNever(mockCinemaDataSources.getTopRankingFilms(page: 1));
    expect(() => mockCinemaDataSources.getTopRankingFilms(page: 1),
        throwsA(isA<Exception>()));
  });
}
