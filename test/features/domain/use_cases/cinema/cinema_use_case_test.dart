import 'dart:convert';

import 'package:clean_tdd/features/data/models/movie/movie_response.dart';
import 'package:clean_tdd/features/domain/use_cases/cinema/cinema_use_cases.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cinema_use_case_test.mocks.dart';

@GenerateMocks([CinemaUseCase])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final mockCinemaUseCase = MockCinemaUseCase();

  Future<MovieResponse> mockGetRating() async {
    return mockCinemaUseCase.getCinema(page: 1);
  }

  test("Test use case from repositories is successfully?", () async {
    final jsonString =
        await rootBundle.loadString("test/assets/top_ranking_films.json");
    final response = MovieResponse.fromJson(jsonDecode(jsonString));
    when(mockGetRating()).thenAnswer((realInvocation) async => response);
    final result = await mockGetRating();
    expect(result, isNotNull);
    expect(result, isA<MovieResponse>());
  });

  test("Test use case from repositories happen an error?", () async {
    when(mockGetRating()).thenThrow(Exception("Occur an error!!!"));
    expect(mockGetRating(), throwsA(isA<Exception>()));
  });
}
