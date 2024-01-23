import 'package:demo_movie/base/base_event.dart';
import 'package:demo_movie/bloc/home_bloc.dart';
import 'package:demo_movie/event/event_load_movie_success.dart';
import 'package:demo_movie/ui/home/components/discovery_card.dart';
import 'package:demo_movie/widget/loading_task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiscoverMovie extends StatefulWidget {
  const DiscoverMovie({Key? key}) : super(key: key);

  @override
  State<DiscoverMovie> createState() => _DiscoverMovieState();
}

class _DiscoverMovieState extends State<DiscoverMovie> {
  @override
  Widget build(BuildContext context) {
    return Provider<HomeBloc>.value(
      value: HomeBloc(Provider.of(context)),
      child: Consumer<HomeBloc>(
        builder: (context, bloc, child) {
          bloc.loadingSink.add(true);
          bloc.getListMovie();
          return LoadingTask(
            bloc: bloc,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: StreamBuilder<BaseEvent>(
                stream: bloc.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data is LoadMovieSuccess) {
                      var response = snapshot.data as LoadMovieSuccess;
                      return ListView.builder(
                        itemCount: response.movies.length,
                        itemBuilder: (context, index) {
                          if (snapshot.hasData) {
                            bloc.loadingSink.add(false);
                            return DiscoveryCard(movie: response.movies[index]);
                          }
                        },
                      );
                    }
                  }
                  return Container();
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
