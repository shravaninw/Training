
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';
part 'movie_dets.g.dart';

abstract class MovieDets implements Built<MovieDets, MovieDetsBuilder> {

  MovieDets._();

  factory MovieDets([void Function(MovieDetsBuilder) updates]) = _$MovieDets;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(MovieDets.serializer, this)
    as Map<String, dynamic>;
  }

  static MovieDets? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MovieDets.serializer, json);
  }

  static Serializer<MovieDets> get serializer => _$movieDetsSerializer;

  int? get budget;
  int? get id;
  @BuiltValueField(wireName: 'original_title')
  String? get originalTitle;
  String? get title;
  @BuiltValueField(wireName: 'backdrop_path')
  String? get backdropPath;
  @BuiltValueField(wireName: 'voteCount')
  int? get rating;
  @BuiltValueField(wireName: 'vote_average')
  num? get voteAverage;
  @BuiltValueField(wireName: 'release_date')
  String? get year;
  String? get overview;
  String? get status;
  int? get runtime;
  String? get type;
  String? get premiere;

  int? get revenue;
  String? get homepage;
  @BuiltValueField(wireName: 'imdb_id')
  String? get imdb;
  @BuiltValueField(wireName:'original_language')
  String? get originalLanguage;
  double? get popularity;







}