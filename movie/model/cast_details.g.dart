// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CastDetails> _$castDetailsSerializer = new _$CastDetailsSerializer();

class _$CastDetailsSerializer implements StructuredSerializer<CastDetails> {
  @override
  final Iterable<Type> types = const [CastDetails, _$CastDetails];
  @override
  final String wireName = 'CastDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, CastDetails object,
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
    value = object.backdropPath;
    if (value != null) {
      result
        ..add('backdrp_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.posterPath;
    if (value != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('original_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CastDetails deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CastDetailsBuilder();

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
        case 'backdrp_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vote_average':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'release_date':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'original_title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CastDetails extends CastDetails {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? backdropPath;
  @override
  final String? posterPath;
  @override
  final double? rating;
  @override
  final String? year;
  @override
  final String? title;

  factory _$CastDetails([void Function(CastDetailsBuilder)? updates]) =>
      (new CastDetailsBuilder()..update(updates)).build();

  _$CastDetails._(
      {this.id,
      this.name,
      this.backdropPath,
      this.posterPath,
      this.rating,
      this.year,
      this.title})
      : super._();

  @override
  CastDetails rebuild(void Function(CastDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CastDetailsBuilder toBuilder() => new CastDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CastDetails &&
        id == other.id &&
        name == other.name &&
        backdropPath == other.backdropPath &&
        posterPath == other.posterPath &&
        rating == other.rating &&
        year == other.year &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        backdropPath.hashCode),
                    posterPath.hashCode),
                rating.hashCode),
            year.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CastDetails')
          ..add('id', id)
          ..add('name', name)
          ..add('backdropPath', backdropPath)
          ..add('posterPath', posterPath)
          ..add('rating', rating)
          ..add('year', year)
          ..add('title', title))
        .toString();
  }
}

class CastDetailsBuilder implements Builder<CastDetails, CastDetailsBuilder> {
  _$CastDetails? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _backdropPath;
  String? get backdropPath => _$this._backdropPath;
  set backdropPath(String? backdropPath) => _$this._backdropPath = backdropPath;

  String? _posterPath;
  String? get posterPath => _$this._posterPath;
  set posterPath(String? posterPath) => _$this._posterPath = posterPath;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  CastDetailsBuilder();

  CastDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _backdropPath = $v.backdropPath;
      _posterPath = $v.posterPath;
      _rating = $v.rating;
      _year = $v.year;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CastDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CastDetails;
  }

  @override
  void update(void Function(CastDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CastDetails build() {
    final _$result = _$v ??
        new _$CastDetails._(
            id: id,
            name: name,
            backdropPath: backdropPath,
            posterPath: posterPath,
            rating: rating,
            year: year,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
