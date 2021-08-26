import 'dart:convert';
import 'serializers.dart';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'cast_details.g.dart';

abstract class CastDetails implements Built<CastDetails, CastDetailsBuilder> {
  factory CastDetails([Function(CastDetailsBuilder b) updates]) = _$CastDetails ;
  CastDetails._();
  String toJson() {
    return json.encode(serializers.serializeWith(CastDetails.serializer, this));
  }

  static CastDetails? fromJson(dynamic jsonString) {
    return serializers.deserializeWith(CastDetails.serializer, json.decode);
  }

  @BuiltValueField(wireName: 'id')
  int? get id;
  String? get name;
  @BuiltValueField(wireName: 'backdrp_path')
  String? get backdropPath;
  @BuiltValueField(wireName: 'poster_path')
  String? get posterPath;
  @BuiltValueField(wireName: 'vote_average')
  double? get rating;
  @BuiltValueField(wireName: 'release_date')
  String? get year;
  @BuiltValueField(wireName: 'original_title')
  String? get title;



  static Serializer<CastDetails> get serializer => _$castDetailsSerializer;
}