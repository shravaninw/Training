import 'package:flutter/material.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/service/movie_service.dart';
import 'image_section.dart';
import '../../service/api_call.dart';
import 'package:built_collection/built_collection.dart';
import 'package:movie/service/movie_service.dart';

class MovieGrid extends StatelessWidget {
  MovieGrid(this.tab);

  final String tab;
  MovieService tmdbService = TmdbService() as MovieService;

  @override
  Widget build(BuildContext context) {
    if (tab == 'Popular') {
      return FutureBuilder<BuiltList<Movie>>(
        future: tmdbService.getPopularMovies('1'),
        builder: (c, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return CircularProgressIndicator();
          if (snapshot.hasData) {
            return GridView.count(

                // childAspectRatio: 100,
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: snapshot.data!
                    .map((Movie element) => ImageSection(
                          movie: element,
                        ))
                    .toList());
          } else
            return Text('No Data');
        },
      );
    }
    if (tab == 'TopRated') {
      return FutureBuilder<BuiltList<Movie>>(
        future: tmdbService.getRatedMovies('1'),
        builder: (c, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return CircularProgressIndicator();
          if (snapshot.hasData) {
            return GridView.count(

                // childAspectRatio: 100,
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: snapshot.data!
                    .map((Movie element) => ImageSection(
                          movie: element,
                        ))
                    .toList());
          } else
            return Text('No Data');
        },
      );
    }
    if (tab == 'Upcoming') {
      return FutureBuilder<BuiltList<Movie>>(
        future: tmdbService.getUpcomingMovies('1'),
        builder: (c, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return CircularProgressIndicator();
          if (snapshot.hasData) {
            return GridView.count(

                // childAspectRatio: 100,
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: snapshot.data!
                    .map((Movie element) => ImageSection(
                          movie: element,
                        ))
                    .toList());
          } else
            return Text('No Data');
        },
      );
    }
    throw (e) {};
  }
}
