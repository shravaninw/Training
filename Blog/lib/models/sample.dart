//import 'package:built_collection/built_collection.dart';
//import 'package:built_value/built_value.dart';
//import 'package:built_value/serializer.dart';
//
//part 'sample.g.dart';
//
//abstract class Sample implements Built<Sample, SampleBuilder> {
//
//
//  Sample._();
//  factory Sample([void Function(SampleBuilder) updates]) = _$Sample;
//
//  Map<String, dynamic> toJson() {
//    return serializers.serializeWith(Sample.serializer, this);
//  }
//
//  static Sample fromJson(Map<String, dynamic> json) {
//    return serializers.deserializeWith(Sample.serializer, json);
//  }
//
//  static Serializer<Sample> get serializer => _$sampleSerializer;
//
//}abstract class BlogComment implements Built<BlogComment, BlogCommentBuilder> {
//
//
//  BlogComment._();
//  factory BlogComment([void Function(BlogCommentBuilder) updates]) = _$BlogComment;
//
//  Map<String, dynamic> toJson() {
//    return serializers.serializeWith(BlogComment.serializer, this);
//  }
//
//  static BlogComment fromJson(Map<String, dynamic> json) {
//    return serializers.deserializeWith(BlogComment.serializer, json);
//  }
//
//  static Serializer<BlogComment> get serializer => _$blogCommentSerializer;
//}
//class EnumName extends EnumClass {
//  static const EnumName constantName = _$constantName;
//
//
//  const EnumName._(String name) : super(name);
//
//  static BuiltSet<EnumName> get values => _$enumNameValues;
//  static EnumName valueOf(String name) => _$enumNameValueOf(name);
//}
//class EnumName extends EnumClass {
//  static const EnumName constantName = _$constantName;
//
//
//  const EnumName._(String name) : super(name);
//
//  static BuiltSet<EnumName> get values => _$enumNameValues;
//  static EnumName valueOf(String name) => _$enumNameValueOf(name);
//
//  String serialize() {
//    return serializers.serializeWith(EnumName.serializer, this);
//  }
//
//  static EnumName deserialize(String string) {
//    return serializers.deserializeWith(EnumName.serializer, string);
//  }
//
//  static Serializer<EnumName> get serializer => _$enumNameSerializer;
//}
//import 'package:built_collection/built_collection.dart';
//import 'package:built_value/built_value.dart';
//
//part 'sample.g.dart';
//
//class Sample extends EnumClass {
//  static const Sample constantName = _$constantName;
//
//
//  const Sample._(String name) : super(name);
//
//  static BuiltSet<Sample> get values => _$sampleValues;
//  static Sample valueOf(String name) => _$sampleValueOf(name);
//
//  String serialize() {
//    return serializers.serializeWith(Sample.serializer, this);
//  }
//
//  static Sample deserialize(String string) {
//    return serializers.deserializeWith(Sample.serializer, string);
//  }
//
//  static Serializer<Sample> get serializer => _$sampleSerializer;
//}
