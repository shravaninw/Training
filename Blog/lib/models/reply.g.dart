// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Reply> _$replySerializer = new _$ReplySerializer();

class _$ReplySerializer implements StructuredSerializer<Reply> {
  @override
  final Iterable<Type> types = const [Reply, _$Reply];
  @override
  final String wireName = 'Reply';

  @override
  Iterable<Object?> serialize(Serializers serializers, Reply object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.docId;
    if (value != null) {
      result
        ..add('docId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.commentId;
    if (value != null) {
      result
        ..add('commentId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.datetime;
    if (value != null) {
      result
        ..add('datetime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reply;
    if (value != null) {
      result
        ..add('reply')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.replyId;
    if (value != null) {
      result
        ..add('replyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Reply deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReplyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'docId':
          result.docId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'commentId':
          result.commentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'datetime':
          result.datetime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'reply':
          result.reply = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'replyId':
          result.replyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Reply extends Reply {
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? username;
  @override
  final String? docId;
  @override
  final String? comment;
  @override
  final String? uid;
  @override
  final String? commentId;
  @override
  final DateTime? datetime;
  @override
  final String? reply;
  @override
  final String? replyId;

  factory _$Reply([void Function(ReplyBuilder)? updates]) =>
      (new ReplyBuilder()..update(updates)).build();

  _$Reply._(
      {this.email,
      this.password,
      this.username,
      this.docId,
      this.comment,
      this.uid,
      this.commentId,
      this.datetime,
      this.reply,
      this.replyId})
      : super._();

  @override
  Reply rebuild(void Function(ReplyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplyBuilder toBuilder() => new ReplyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Reply &&
        email == other.email &&
        password == other.password &&
        username == other.username &&
        docId == other.docId &&
        comment == other.comment &&
        uid == other.uid &&
        commentId == other.commentId &&
        datetime == other.datetime &&
        reply == other.reply &&
        replyId == other.replyId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, email.hashCode),
                                        password.hashCode),
                                    username.hashCode),
                                docId.hashCode),
                            comment.hashCode),
                        uid.hashCode),
                    commentId.hashCode),
                datetime.hashCode),
            reply.hashCode),
        replyId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Reply')
          ..add('email', email)
          ..add('password', password)
          ..add('username', username)
          ..add('docId', docId)
          ..add('comment', comment)
          ..add('uid', uid)
          ..add('commentId', commentId)
          ..add('datetime', datetime)
          ..add('reply', reply)
          ..add('replyId', replyId))
        .toString();
  }
}

class ReplyBuilder implements Builder<Reply, ReplyBuilder> {
  _$Reply? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _docId;
  String? get docId => _$this._docId;
  set docId(String? docId) => _$this._docId = docId;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _commentId;
  String? get commentId => _$this._commentId;
  set commentId(String? commentId) => _$this._commentId = commentId;

  DateTime? _datetime;
  DateTime? get datetime => _$this._datetime;
  set datetime(DateTime? datetime) => _$this._datetime = datetime;

  String? _reply;
  String? get reply => _$this._reply;
  set reply(String? reply) => _$this._reply = reply;

  String? _replyId;
  String? get replyId => _$this._replyId;
  set replyId(String? replyId) => _$this._replyId = replyId;

  ReplyBuilder();

  ReplyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _username = $v.username;
      _docId = $v.docId;
      _comment = $v.comment;
      _uid = $v.uid;
      _commentId = $v.commentId;
      _datetime = $v.datetime;
      _reply = $v.reply;
      _replyId = $v.replyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Reply other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Reply;
  }

  @override
  void update(void Function(ReplyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Reply build() {
    final _$result = _$v ??
        new _$Reply._(
            email: email,
            password: password,
            username: username,
            docId: docId,
            comment: comment,
            uid: uid,
            commentId: commentId,
            datetime: datetime,
            reply: reply,
            replyId: replyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
