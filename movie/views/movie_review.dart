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
import 'package:movie/service/movie_service.dart';

class MovieReview extends StatelessWidget {
  MovieReview({Key? key, required this.movie}) : super(key: key);
  final Movie movie;
  MovieService tmdbService = TmdbService() ;


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MovieDets>(
      future: tmdbService.getMovieDets(
          '${tmdbService.url}/${movie.id}${tmdbService.apiKey}&${tmdbService.language}'),
//'url
      //https://api.themoviedb.org/3/movie/{movie_id}?api_key=89b7237bbcff0fa06e47811bdf0ea123&language=en-US
      builder: (c, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return CircularProgressIndicator();
        if (snapshot.hasData) {
          return Scaffold(

            backgroundColor: Colors.black,
            body: ListView(
              scrollDirection: Axis.vertical,
              children: [
                MoviePoster(
                  movieDets: snapshot.data!,
                ),
                Synopsis(),
                Description(
                  movieDets: snapshot.data!,
                ),
                Cast(),
                CastImage(movieDets: snapshot.data!,),
                AboutSection(
                  movieDets: snapshot.data!,
                ),

              ],
            ),
          );
        } else {
          return Scaffold(body: Text('Has No Data'));
        }
      },
    );
  }
}
