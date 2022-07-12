import 'dart:convert';

import 'package:clean_tdd/features/data/models/movie/movie_response.dart';
import 'package:flutter/services.dart';

class CinemaDummyData {
  static Future<MovieResponse> getMovieResponseDummy() async {
    final jsonString =
        await rootBundle.loadString("test/assets/top_ranking_films.json");
    return MovieResponse.fromJson(jsonDecode(jsonString));
  }
}
