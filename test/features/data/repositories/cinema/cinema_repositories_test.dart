import 'dart:convert';

import 'package:clean_tdd/features/data/models/movie/movie_response.dart';
import 'package:clean_tdd/features/data/repositories/cinema/cinema_repositories.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cinema_repositories_test.mocks.dart';

@GenerateMocks([CinemaRepositories])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockCinemaRepositories mockCinemaRepositories;
  setUp(() {
    mockCinemaRepositories = MockCinemaRepositories();
  });
  Future<MovieResponse> mockGetTopRanking() async {
    return mockCinemaRepositories.getTopRankingFilms(page: 1);
  }

  test("Test called API from Data sources is successfully?", () async {
    final jsonString =
        await rootBundle.loadString("test/assets/top_ranking_films.json");
    final response = MovieResponse.fromJson(jsonDecode(jsonString));
    when(mockGetTopRanking()).thenAnswer((realInvocation) async => response);
    final result = await mockGetTopRanking();
    expect(result, isNotNull);
    expect(result, isA<MovieResponse>());
  });

  test("Test called API from Data sources is unsuccessfully?", () async {
    when(mockGetTopRanking()).thenThrow(Exception("Force throw exception"));
    verifyNever(mockGetTopRanking());
    expect(() => mockGetTopRanking(), throwsA(isA<Exception>()));
  });
}
