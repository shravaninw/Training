
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:movie/models/genres.dart';
import 'package:movie/models/movie_details.dart';
import 'package:movie/models/cast_details.dart';
import 'cast.dart';
import 'movie.dart';
import 'movie_dets.dart';

import 'package:built_collection/built_collection.dart';
part 'serializers.g.dart';

@SerializersFor([
  Movie,
  MovieDetails,
  MovieDets,
  Cast,
  Genres,
  CastDetails,



  // TODO: add the built values that require serialization
])
final Serializers serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
