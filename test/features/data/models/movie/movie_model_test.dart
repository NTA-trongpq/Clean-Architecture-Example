import 'package:clean_tdd/features/data/models/movie/movie_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([MovieModel])
void main() {
  var movie = const MovieModel(id: 111);
  test("Test model is valid", () {
    expect(movie, isA<MovieModel>());
  });
}
