import 'package:flutter/material.dart';
import 'package:movie/models/movie_dets.dart';
import 'package:movie/views/widgets/cast_details.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/service/api_call.dart';
import 'package:built_collection/built_collection.dart';
import 'package:movie/service/movie_service.dart';
class CastImage extends StatelessWidget {
  CastImage({Key? key, required this.movieDets}) : super(key: key);
  final MovieDets movieDets;
  MovieService tmdbService = TmdbService() ;


  @override
  Widget build(BuildContext context) {
    print(movieDets.id);
    return FutureBuilder<BuiltList<Cast>>(
      future: tmdbService.cast(movieDets.id!),
      builder: (c, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return CircularProgressIndicator();
        if (snapshot.hasData) {
          return Container(
            height: 100,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: snapshot.data!
                    .map((Cast element) => CastDetails(cast: element))
                    .toList()),
          );
        }
        return Text('No value',style: TextStyle(color: Colors.white),);
      },
    );
  }
}
