import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/models/cast_details.dart';
import 'package:movie/models/genres.dart';
import 'package:movie/models/movie.dart';
import 'serializers.dart';

part 'movie_details.g.dart';

abstract class MovieDetails implements Built<MovieDetails, MovieDetailsBuilder> {
  MovieDetails._();

  factory MovieDetails([void Function(MovieDetailsBuilder) updates]) = _$MovieDetails;

  String toJson() {
    return json.encode(serializers.serializeWith(MovieDetails.serializer, this));
  }

  static MovieDetails? fromJson(dynamic jsonString) {
    return serializers.deserializeWith(MovieDetails.serializer, jsonString);
  }
  @BuiltValueField(wireName: 'results')
  BuiltList<Movie> get movies;
  BuiltList<Cast> get cast;
  //@BuiltValueField(wireName: 'cast')
  //BuiltList<CastDetails> get castDet;
  BuiltList<Genres> get genres;
  static Serializer<MovieDetails> get serializer => _$movieDetailsSerializer;
}