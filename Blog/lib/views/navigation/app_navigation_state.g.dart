// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_navigation_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppNavigationState> _$appNavigationStateSerializer =
    new _$AppNavigationStateSerializer();

class _$AppNavigationStateSerializer
    implements StructuredSerializer<AppNavigationState> {
  @override
  final Iterable<Type> types = const [AppNavigationState, _$AppNavigationState];
  @override
  final String wireName = 'AppNavigationState';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AppNavigationState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.authentication;
    if (value != null) {
      result
        ..add('authentication')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Authentication)));
    }
    value = object.blogRoute;
    if (value != null) {
      result
        ..add('blogRoute')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BlogRoute)));
    }
    return result;
  }

  @override
  AppNavigationState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppNavigationStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'authentication':
          result.authentication = serializers.deserialize(value,
              specifiedType: const FullType(Authentication)) as Authentication?;
          break;
        case 'blogRoute':
          result.blogRoute = serializers.deserialize(value,
              specifiedType: const FullType(BlogRoute)) as BlogRoute?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppNavigationState extends AppNavigationState {
  @override
  final Authentication? authentication;
  @override
  final BlogRoute? blogRoute;

  factory _$AppNavigationState(
          [void Function(AppNavigationStateBuilder)? updates]) =>
      (new AppNavigationStateBuilder()..update(updates)).build();

  _$AppNavigationState._({this.authentication, this.blogRoute}) : super._();

  @override
  AppNavigationState rebuild(
          void Function(AppNavigationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppNavigationStateBuilder toBuilder() =>
      new AppNavigationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppNavigationState &&
        authentication == other.authentication &&
        blogRoute == other.blogRoute;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, authentication.hashCode), blogRoute.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppNavigationState')
          ..add('authentication', authentication)
          ..add('blogRoute', blogRoute))
        .toString();
  }
}

class AppNavigationStateBuilder
    implements Builder<AppNavigationState, AppNavigationStateBuilder> {
  _$AppNavigationState? _$v;

  Authentication? _authentication;
  Authentication? get authentication => _$this._authentication;
  set authentication(Authentication? authentication) =>
      _$this._authentication = authentication;

  BlogRoute? _blogRoute;
  BlogRoute? get blogRoute => _$this._blogRoute;
  set blogRoute(BlogRoute? blogRoute) => _$this._blogRoute = blogRoute;

  AppNavigationStateBuilder();

  AppNavigationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authentication = $v.authentication;
      _blogRoute = $v.blogRoute;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppNavigationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppNavigationState;
  }

  @override
  void update(void Function(AppNavigationStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppNavigationState build() {
    final _$result = _$v ??
        new _$AppNavigationState._(
            authentication: authentication, blogRoute: blogRoute);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
