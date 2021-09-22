import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'blog.g.dart';

abstract class Blog implements Built<Blog, BlogBuilder> {
  factory Blog([Function(BlogBuilder b) updates]) = _$Blog;
  Blog._();
  Map<String, dynamic> toJson(Blog blog) {
    return serializers.serializeWith(Blog.serializer, this)
        as Map<String, dynamic>;
  }

  static Blog? fromJson(Map<String, dynamic> jsonData) {
    return serializers.deserializeWith(Blog.serializer, jsonData);
  }

  String? get email;
  String? get password;
  String? get username;
  String? get title;
  String? get content;
  String? get author;
  String? get docId;
  String? get comment;
  String? get uid;
  String? get commentId;
  DateTime? get datetime;
  BuiltList<String>? get like;

  static Serializer<Blog> get serializer => _$blogSerializer;
}
