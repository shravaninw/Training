import 'dart:convert';

import 'package:blog/models/blog.dart';
import 'package:blog/models/comment.dart';
import 'package:blog/models/reply.dart';
import 'package:blog/models/serializers.dart';
import 'package:blog/models/user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'blog_app.g.dart';

abstract class BlogState implements Built<BlogState, BlogStateBuilder> {
  BlogState._();

  factory BlogState([Function(BlogStateBuilder b) updates]) = _$BlogState;

  String toJson() {
    return json.encode(serializers.serializeWith(BlogState.serializer, this));
  }

  static BlogState? fromJson(dynamic jsonString) {
    return serializers.deserializeWith(BlogState.serializer, jsonString);
  }

  static void _initializeBuilder(BlogStateBuilder b) {
    b.getreply = BuiltMap<String, BuiltList<Reply>>().toBuilder();
  }

  @BuiltValueField(wireName: 'uid')
  BuiltList<Blog> get blog;
  User? get user;
  String? get email;
  String? get username;
  BuiltList<Comment> get comment;
  BuiltMap<String, BuiltList<Reply>> get getreply;

  static Serializer<BlogState> get serializer => _$blogStateSerializer;
}
