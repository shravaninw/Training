import 'dart:convert';
import 'serializers.dart';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'cast.g.dart';

abstract class Cast implements Built<Cast, CastBuilder> {
  factory Cast([Function(CastBuilder b) updates]) = _$Cast;
  Cast._();
  String toJson() {
    return json.encode(serializers.serializeWith(Cast.serializer, this));
  }

  static Cast? fromJson(dynamic jsonString) {
    return serializers.deserializeWith(Cast.serializer, json.decode);
  }

  @BuiltValueField(wireName: 'id')
  int? get creditId;
  String? get name;
  @BuiltValueField(wireName: 'profile_path')
  String? get profilePath;
  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'backdrop_path')
  String? get backdropPath;
  @BuiltValueField(wireName: 'poster_path')
  String? get posterPath;
  @BuiltValueField(wireName: 'vote_average')
  double? get rating;
  @BuiltValueField(wireName: 'release_date')
  String? get year;
  @BuiltValueField(wireName: 'original_title')
  String? get title;
@BuiltValueField(wireName: 'first_air_date')
String? get firstAirDate;

  static Serializer<Cast> get serializer => _$castSerializer;
}