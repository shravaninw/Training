import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';
part 'genres.g.dart';

abstract class Genres implements Built<Genres, GenresBuilder> {

  Genres._();

  factory Genres([void Function(GenresBuilder) updates]) = _$Genres;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Genres.serializer, this)
    as Map<String, dynamic>;
  }

  static Genres? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Genres.serializer, json);
  }

  static Serializer<Genres> get serializer => _$genresSerializer;

  int? get id;

  String? get name;
}