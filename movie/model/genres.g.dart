// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Genres> _$genresSerializer = new _$GenresSerializer();

class _$GenresSerializer implements StructuredSerializer<Genres> {
  @override
  final Iterable<Type> types = const [Genres, _$Genres];
  @override
  final String wireName = 'Genres';

  @override
  Iterable<Object?> serialize(Serializers serializers, Genres object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Genres deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenresBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Genres extends Genres {
  @override
  final int? id;
  @override
  final String? name;

  factory _$Genres([void Function(GenresBuilder)? updates]) =>
      (new GenresBuilder()..update(updates)).build();

  _$Genres._({this.id, this.name}) : super._();

  @override
  Genres rebuild(void Function(GenresBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenresBuilder toBuilder() => new GenresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Genres && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Genres')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GenresBuilder implements Builder<Genres, GenresBuilder> {
  _$Genres? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GenresBuilder();

  GenresBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Genres other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Genres;
  }

  @override
  void update(void Function(GenresBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Genres build() {
    final _$result = _$v ?? new _$Genres._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
