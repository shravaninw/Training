import 'package:blog/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment.g.dart';

abstract class Comment implements Built<Comment, CommentBuilder> {
  Comment._();
  factory Comment([void Function(CommentBuilder) updates]) = _$Comment;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Comment.serializer, this)
        as Map<String, dynamic>;
  }

  static Comment? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Comment.serializer, json);
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
  static Serializer<Comment> get serializer => _$commentSerializer;
}
