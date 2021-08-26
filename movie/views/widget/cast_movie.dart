import 'package:flutter/material.dart';
import 'package:movie/models/cast_details.dart';
import 'package:movie/models/movie_dets.dart';
import 'package:movie/service/api_call.dart';
import 'package:movie/views/widgets/movie_tab.dart';
import 'package:movie/models/cast.dart';
import 'package:built_collection/built_collection.dart';
import 'package:movie/views/widgets/tv_tab.dart';

class CastMovie extends StatelessWidget {
  CastMovie({Key? key, required this.cast,required this.tab}) : super(key: key);
  final Cast cast;
  TmdbService tmdbService = TmdbService();
 final String tab;

//String url='${tmdbService.urlPerson}/${cast.id}${tmdbService.apiKey}&${language}';
  @override
  Widget build(BuildContext context) {
    if(tab=='Movie') {
      return FutureBuilder<BuiltList<Cast>>(

          future: tmdbService.getCastMovie(
              'http://api.themoviedb.org/3/person/${cast
                  .creditId}/movie_credits?api_key=89b7237bbcff0fa06e47811bdf0ea123&language=en-US'),

          //  '${tmdbService.urlPerson}/${cast.creditId}movie_credits${tmdbService.apiKey}&${tmdbService.language}'),
          builder: (c, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return CircularProgressIndicator();

            if (snapshot.hasData) {
              return ListView(
                  children: snapshot.data!
                      .map((Cast element) =>
                      MovieTab(
                        cast: element,
                      ))
                      .toList());
            }
            return Text('Has no Data');
          }
      );
    }
    if(tab=='Tv') {
      return FutureBuilder<BuiltList<Cast>>(

          future: tmdbService.getCastMovie(
              'http://api.themoviedb.org/3/person/${cast
                  .creditId}/tv_credits?api_key=89b7237bbcff0fa06e47811bdf0ea123&language=en-US'),

          //  '${tmdbService.urlPerson}/${cast.creditId}movie_credits${tmdbService.apiKey}&${tmdbService.language}'),
          builder: (c, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return CircularProgressIndicator();

            if (snapshot.hasData) {
              print("hasdata");
              return ListView(
                  children: snapshot.data!
                      .map((Cast element) =>
                      TvTab(
                        cast: element,
                      ))
                      .toList());
            }
            return Text('Has no Data');
          }
      );
    }
    return Text('No Tab');

  }
}
