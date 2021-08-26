
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';
part 'movie.g.dart';

abstract class Movie implements Built<Movie, MovieBuilder> {

  Movie._();

  factory Movie([void Function(MovieBuilder) updates]) = _$Movie;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Movie.serializer, this)
    as Map<String, dynamic>;
  }

  static Movie? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Movie.serializer, json);
  }

  static Serializer<Movie> get serializer => _$movieSerializer;


@BuiltValueField(wireName: 'poster_path')
String? get posterPath;
int? get id;
String? get title;
  @BuiltValueField(wireName: 'original_title')
  String? get name;
  String? get rating;
  @BuiltValueField(wireName: 'release_date')
  String? get year;
  String? get overview;
  String? get status;
  int? get runtime;
  @BuiltValueField(wireName: 'tagline')
  String? get type;
  String? get premiere;
  int? get budget;
  int? get revenue;
  String? get homepage;
  String? get imdb;
  @BuiltValueField(wireName:'original_language')
  String? get originalLanguage;
  double? get popularity;
  @BuiltValueField(wireName: 'vote_count')
  int? get voteCount;
  @BuiltValueField(wireName: 'genre_id')
  List<int>? get genre;
  @BuiltValueField(wireName: 'backdrop_path')
  String? get backdropPath;



}