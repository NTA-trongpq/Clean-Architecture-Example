import 'package:clean_tdd/features/data/models/movie/movie_response.dart';
import 'package:dio/dio.dart';

import '../api.dart';
import 'i_cinema_data_sources.dart';

class CinemaDataSources implements ICinemaDataSources {
  @override
  Future<MovieResponse> getTopRankingFilms({int page = 1}) async {
    final dio = Dio();
    final apiKey = ApiConfig.getInstance.apiKey;
    try {
      final queryParams = {
        "api_key": apiKey,
        "page": "$page",
      };
      final url = ApiConfig.getInstance.baseUrl + ApiEndPoint.topRatingFilms;
      final response = await dio.post(
        url,
        queryParameters: queryParams,
      );
      return MovieResponse.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
