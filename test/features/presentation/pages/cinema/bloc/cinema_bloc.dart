import 'package:bloc_test/bloc_test.dart';
import 'package:clean_tdd/features/data/models/movie/movie_response.dart';
import 'package:clean_tdd/features/presentation/pages/cinema/bloc/cinema_bloc.dart';
import 'package:clean_tdd/features/presentation/pages/cinema/bloc/cinema_event.dart';
import 'package:clean_tdd/features/presentation/pages/cinema/bloc/cinema_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../../dummy/cinema/cinema_dummy_data.dart';
import '../../../../domain/use_cases/cinema/cinema_use_case_test.mocks.dart';

@GenerateMocks([CinemaBloc])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final mockCinemaUseCase = MockCinemaUseCase();
  final bloc = CinemaBloc(mockCinemaUseCase);

  Future<MovieResponse> mockGetRatingFromUseCase() async {
    return mockCinemaUseCase.getCinema(page: 1);
  }

  test("Check [CinemaStatus] is initial?", () async {
    expect(bloc.state.status, CinemaStatus.initial);
  });

  group("Check load data from bloc", () {
    blocTest(
      "Check status from loading -> success",
      setUp: () {
        when(mockGetRatingFromUseCase()).thenAnswer((realInvocation) async {
          final response = await CinemaDummyData.getMovieResponseDummy();
          return response;
        });
      },
      build: () => bloc,
      act: (CinemaBloc bloc) => bloc.add(GetCinema()),
      expect: () => [
        isA<CinemaState>().having((p0) => p0.status, "Check status",
            CinemaStatus.loading), //Switch status to [Loading]
        isA<CinemaState>().having((p0) => p0.status, "Check status",
            CinemaStatus.hasResult), //Switch status to [HasResult]
      ],
    );

    blocTest<CinemaBloc, CinemaState>(
      "Check exception is thrown?",
      setUp: () {
        when(mockGetRatingFromUseCase())
            .thenThrow(Exception("Occur an error!!!"));
      },
      build: () => bloc,
      act: (bloc) => throw Exception("Occur an error!!!"),
      errors: () => [isException],
    );
  });
}
