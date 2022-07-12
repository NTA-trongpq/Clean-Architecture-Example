import 'package:intl/intl.dart';

class Movie {
  String backdropPath;
  int id;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  String releaseDate;
  double voteAverage;
  int voteCount;

  Movie(
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.voteAverage,
    this.voteCount,
  );

  String get getBackDropPath =>
      "https://www.themoviedb.org/t/p/w220_and_h330_face/$backdropPath";

  String get getPosterPath =>
      "https://www.themoviedb.org/t/p/w220_and_h330_face/$posterPath";

  String get getReleaseDate {
    final date = DateFormat("yyyy-mm-dd").parse(releaseDate);
   final dateFormat = DateFormat.yMMMMEEEEd();
   return dateFormat.format(date);
  }
}
