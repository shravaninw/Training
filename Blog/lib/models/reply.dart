import 'package:blog/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reply.g.dart';

abstract class Reply implements Built<Reply, ReplyBuilder> {
  Reply._();
  factory Reply([void Function(ReplyBuilder) updates]) = _$Reply;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(Reply.serializer, this)
        as Map<String, dynamic>;
  }

  static Reply? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Reply.serializer, json);
  }

  String? get email;
  String? get password;
  String? get username;
  String? get docId;
  String? get comment;
  String? get uid;
  String? get commentId;
  DateTime? get datetime;
  String? get reply;
  String? get replyId;
  static Serializer<Reply> get serializer => _$replySerializer;
}
