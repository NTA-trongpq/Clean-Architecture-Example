import 'package:clean_tdd/features/data/data_sources/remote_data_sources/cinema/cinema_data_sources.dart';
import 'package:clean_tdd/features/data/repositories/cinema/cinema_repositories.dart';
import 'package:clean_tdd/features/domain/entities/movie/movie.dart';
import 'package:clean_tdd/features/domain/use_cases/cinema/cinema_use_cases.dart';
import 'package:clean_tdd/features/presentation/pages/cinema/bloc/cinema_bloc.dart';
import 'package:clean_tdd/features/presentation/pages/cinema/bloc/cinema_event.dart';
import 'package:clean_tdd/features/presentation/pages/cinema/bloc/cinema_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CinemaScreen extends StatefulWidget {
  const CinemaScreen({Key? key}) : super(key: key);

  @override
  State<CinemaScreen> createState() => _CinemaScreenState();
}

class _CinemaScreenState extends State<CinemaScreen> {
  late CinemaBloc bloc;

  @override
  void initState() {
    super.initState();

    final dataSources = CinemaDataSources();
    final repositories = CinemaRepositories(dataSources);
    final useCase = CinemaUseCase(repositories);
    bloc = CinemaBloc(useCase);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.1),
      body: BlocProvider(
        create: (context) {
          bloc.add(GetCinema());
          return bloc;
        },
        child: SafeArea(
          child: BlocListener<CinemaBloc, CinemaState>(
            listener: (context, state){
              if(state.status == CinemaStatus.hasError){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Occur an error!!!")));
              }
            },
            child: BlocBuilder<CinemaBloc, CinemaState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _Title(title: "TOP rating:"),
                    state.films.isEmpty
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : SizedBox(
                            height: 400.0,
                            child: NotificationListener<ScrollNotification>(
                              onNotification: (info) {
                                if (info.metrics.pixels ==
                                    info.metrics.maxScrollExtent) {
                                  bloc.add(LoadMoreCinema());
                                }
                                return false;
                              },
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, position) {
                                  return Row(
                                    children: [
                                      if (position != 0)
                                        const SizedBox(
                                          width: 24.0,
                                        ),
                                      _Item(
                                        film: state.films[position],
                                      ),
                                    ],
                                  );
                                },
                                itemCount: state.films.length,
                              ),
                            ),
                          ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String title;

  const _Title({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final Movie film;

  const _Item({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                film.getBackDropPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              film.originalTitle,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              maxLines: 1,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.calendar_month,
                  size: 16.0,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    film.getReleaseDate,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}
