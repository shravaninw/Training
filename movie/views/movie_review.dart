import 'package:flutter/material.dart';
import 'package:movie/models/movie_dets.dart';
import 'package:movie/service/api_call.dart';

import 'package:movie/views/widgets/cast.dart';
import 'package:movie/views/widgets/cast_image.dart';

import 'package:movie/views/widgets/description.dart';
import 'widgets/movie_poster.dart';
import 'package:movie/models/movie.dart';

import 'widgets/synopsis.dart';
import 'widgets/about.dart';

class MovieReview extends StatelessWidget {
  MovieReview({Key? key, required this.movie}) : super(key: key);
  final MovieDets moviedets=MovieDets();
  final Movie movie;

  TmdbService tmdbService=TmdbService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: tmdbService.getMovieDets(
    'https://api.themoviedb.org/3/movie/${movie
        .id}?api_key=89b7237bbcff0fa06e47811bdf0ea123&language=en-US'),
    builder: (c, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting)
        return CircularProgressIndicator();
      return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(

          scrollDirection: Axis.vertical,
          children: [
            MoviePoster(),
            Synopsis(),
            Description(),
            Cast(),
            CastImage(),

            AboutSection(
                title: '${moviedets.title}',
                status: '${moviedets.status}',
                runtime: '${moviedets.runtimeType}',
                type: '${moviedets.genre}',
                premiere: '${moviedets.premiere}',
                budget: '${moviedets.budget}',
                revenue: '${moviedets.revenue}',
                homepage: '${moviedets.homepage}',
                imdb: '${moviedets.imdb}'
            ),
          ],
        ),);
    },);
    }
  }
