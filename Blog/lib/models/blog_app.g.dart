// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_app.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlogState> _$blogStateSerializer = new _$BlogStateSerializer();

class _$BlogStateSerializer implements StructuredSerializer<BlogState> {
  @override
  final Iterable<Type> types = const [BlogState, _$BlogState];
  @override
  final String wireName = 'BlogState';

  @override
  Iterable<Object?> serialize(Serializers serializers, BlogState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.blog,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Blog)])),
      'comment',
      serializers.serialize(object.comment,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Comment)])),
      'getreply',
      serializers.serialize(object.getreply,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(Reply)])
          ])),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(User)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
    return result;
  }

  @override
  BlogState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlogStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.blog.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Blog)]))!
              as BuiltList<Object?>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User))! as User);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comment':
          result.comment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Comment)]))!
              as BuiltList<Object?>);
          break;
        case 'getreply':
          result.getreply.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltList, const [const FullType(Reply)])
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$BlogState extends BlogState {
  @override
  final BuiltList<Blog> blog;
  @override
  final User? user;
  @override
  final String? email;
  @override
  final String? username;
  @override
  final BuiltList<Comment> comment;
  @override
  final BuiltMap<String, BuiltList<Reply>> getreply;

  factory _$BlogState([void Function(BlogStateBuilder)? updates]) =>
      (new BlogStateBuilder()..update(updates)).build();

  _$BlogState._(
      {required this.blog,
      this.user,
      this.email,
      this.username,
      required this.comment,
      required this.getreply})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(blog, 'BlogState', 'blog');
    BuiltValueNullFieldError.checkNotNull(comment, 'BlogState', 'comment');
    BuiltValueNullFieldError.checkNotNull(getreply, 'BlogState', 'getreply');
  }

  @override
  BlogState rebuild(void Function(BlogStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogStateBuilder toBuilder() => new BlogStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlogState &&
        blog == other.blog &&
        user == other.user &&
        email == other.email &&
        username == other.username &&
        comment == other.comment &&
        getreply == other.getreply;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, blog.hashCode), user.hashCode), email.hashCode),
                username.hashCode),
            comment.hashCode),
        getreply.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BlogState')
          ..add('blog', blog)
          ..add('user', user)
          ..add('email', email)
          ..add('username', username)
          ..add('comment', comment)
          ..add('getreply', getreply))
        .toString();
  }
}

class BlogStateBuilder implements Builder<BlogState, BlogStateBuilder> {
  _$BlogState? _$v;

  ListBuilder<Blog>? _blog;
  ListBuilder<Blog> get blog => _$this._blog ??= new ListBuilder<Blog>();
  set blog(ListBuilder<Blog>? blog) => _$this._blog = blog;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  ListBuilder<Comment>? _comment;
  ListBuilder<Comment> get comment =>
      _$this._comment ??= new ListBuilder<Comment>();
  set comment(ListBuilder<Comment>? comment) => _$this._comment = comment;

  MapBuilder<String, BuiltList<Reply>>? _getreply;
  MapBuilder<String, BuiltList<Reply>> get getreply =>
      _$this._getreply ??= new MapBuilder<String, BuiltList<Reply>>();
  set getreply(MapBuilder<String, BuiltList<Reply>>? getreply) =>
      _$this._getreply = getreply;

  BlogStateBuilder() {
    BlogState._initializeBuilder(this);
  }

  BlogStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blog = $v.blog.toBuilder();
      _user = $v.user?.toBuilder();
      _email = $v.email;
      _username = $v.username;
      _comment = $v.comment.toBuilder();
      _getreply = $v.getreply.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlogState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlogState;
  }

  @override
  void update(void Function(BlogStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BlogState build() {
    _$BlogState _$result;
    try {
      _$result = _$v ??
          new _$BlogState._(
              blog: blog.build(),
              user: _user?.build(),
              email: email,
              username: username,
              comment: comment.build(),
              getreply: getreply.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blog';
        blog.build();
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'comment';
        comment.build();
        _$failedField = 'getreply';
        getreply.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BlogState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
