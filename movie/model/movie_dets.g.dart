// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieDets> _$movieDetsSerializer = new _$MovieDetsSerializer();

class _$MovieDetsSerializer implements StructuredSerializer<MovieDets> {
  @override
  final Iterable<Type> types = const [MovieDets, _$MovieDets];
  @override
  final String wireName = 'MovieDets';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieDets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.budget;
    if (value != null) {
      result
        ..add('budget')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.originalTitle;
    if (value != null) {
      result
        ..add('original_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.backdropPath;
    if (value != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('voteCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.voteAverage;
    if (value != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.overview;
    if (value != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.runtime;
    if (value != null) {
      result
        ..add('runtime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.premiere;
    if (value != null) {
      result
        ..add('premiere')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.revenue;
    if (value != null) {
      result
        ..add('revenue')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.homepage;
    if (value != null) {
      result
        ..add('homepage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imdb;
    if (value != null) {
      result
        ..add('imdb_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.originalLanguage;
    if (value != null) {
      result
        ..add('original_language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  MovieDets deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieDetsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'voteCount':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'release_date':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'premiere':
          result.premiere = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imdb_id':
          result.imdb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieDets extends MovieDets {
  @override
  final int? budget;
  @override
  final int? id;
  @override
  final String? originalTitle;
  @override
  final String? title;
  @override
  final String? backdropPath;
  @override
  final int? rating;
  @override
  final num? voteAverage;
  @override
  final String? year;
  @override
  final String? overview;
  @override
  final String? status;
  @override
  final int? runtime;
  @override
  final String? type;
  @override
  final String? premiere;
  @override
  final int? revenue;
  @override
  final String? homepage;
  @override
  final String? imdb;
  @override
  final String? originalLanguage;
  @override
  final double? popularity;

  factory _$MovieDets([void Function(MovieDetsBuilder)? updates]) =>
      (new MovieDetsBuilder()..update(updates)).build();

  _$MovieDets._(
      {this.budget,
      this.id,
      this.originalTitle,
      this.title,
      this.backdropPath,
      this.rating,
      this.voteAverage,
      this.year,
      this.overview,
      this.status,
      this.runtime,
      this.type,
      this.premiere,
      this.revenue,
      this.homepage,
      this.imdb,
      this.originalLanguage,
      this.popularity})
      : super._();

  @override
  MovieDets rebuild(void Function(MovieDetsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieDetsBuilder toBuilder() => new MovieDetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieDets &&
        budget == other.budget &&
        id == other.id &&
        originalTitle == other.originalTitle &&
        title == other.title &&
        backdropPath == other.backdropPath &&
        rating == other.rating &&
        voteAverage == other.voteAverage &&
        year == other.year &&
        overview == other.overview &&
        status == other.status &&
        runtime == other.runtime &&
        type == other.type &&
        premiere == other.premiere &&
        revenue == other.revenue &&
        homepage == other.homepage &&
        imdb == other.imdb &&
        originalLanguage == other.originalLanguage &&
        popularity == other.popularity;
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            budget
                                                                                .hashCode),
                                                                        id
                                                                            .hashCode),
                                                                    originalTitle
                                                                        .hashCode),
                                                                title.hashCode),
                                                            backdropPath
                                                                .hashCode),
                                                        rating.hashCode),
                                                    voteAverage.hashCode),
                                                year.hashCode),
                                            overview.hashCode),
                                        status.hashCode),
                                    runtime.hashCode),
                                type.hashCode),
                            premiere.hashCode),
                        revenue.hashCode),
                    homepage.hashCode),
                imdb.hashCode),
            originalLanguage.hashCode),
        popularity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieDets')
          ..add('budget', budget)
          ..add('id', id)
          ..add('originalTitle', originalTitle)
          ..add('title', title)
          ..add('backdropPath', backdropPath)
          ..add('rating', rating)
          ..add('voteAverage', voteAverage)
          ..add('year', year)
          ..add('overview', overview)
          ..add('status', status)
          ..add('runtime', runtime)
          ..add('type', type)
          ..add('premiere', premiere)
          ..add('revenue', revenue)
          ..add('homepage', homepage)
          ..add('imdb', imdb)
          ..add('originalLanguage', originalLanguage)
          ..add('popularity', popularity))
        .toString();
  }
}

class MovieDetsBuilder implements Builder<MovieDets, MovieDetsBuilder> {
  _$MovieDets? _$v;

  int? _budget;
  int? get budget => _$this._budget;
  set budget(int? budget) => _$this._budget = budget;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _originalTitle;
  String? get originalTitle => _$this._originalTitle;
  set originalTitle(String? originalTitle) =>
      _$this._originalTitle = originalTitle;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _backdropPath;
  String? get backdropPath => _$this._backdropPath;
  set backdropPath(String? backdropPath) => _$this._backdropPath = backdropPath;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  num? _voteAverage;
  num? get voteAverage => _$this._voteAverage;
  set voteAverage(num? voteAverage) => _$this._voteAverage = voteAverage;

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _runtime;
  int? get runtime => _$this._runtime;
  set runtime(int? runtime) => _$this._runtime = runtime;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _premiere;
  String? get premiere => _$this._premiere;
  set premiere(String? premiere) => _$this._premiere = premiere;

  int? _revenue;
  int? get revenue => _$this._revenue;
  set revenue(int? revenue) => _$this._revenue = revenue;

  String? _homepage;
  String? get homepage => _$this._homepage;
  set homepage(String? homepage) => _$this._homepage = homepage;

  String? _imdb;
  String? get imdb => _$this._imdb;
  set imdb(String? imdb) => _$this._imdb = imdb;

  String? _originalLanguage;
  String? get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String? originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  double? _popularity;
  double? get popularity => _$this._popularity;
  set popularity(double? popularity) => _$this._popularity = popularity;

  MovieDetsBuilder();

  MovieDetsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _budget = $v.budget;
      _id = $v.id;
      _originalTitle = $v.originalTitle;
      _title = $v.title;
      _backdropPath = $v.backdropPath;
      _rating = $v.rating;
      _voteAverage = $v.voteAverage;
      _year = $v.year;
      _overview = $v.overview;
      _status = $v.status;
      _runtime = $v.runtime;
      _type = $v.type;
      _premiere = $v.premiere;
      _revenue = $v.revenue;
      _homepage = $v.homepage;
      _imdb = $v.imdb;
      _originalLanguage = $v.originalLanguage;
      _popularity = $v.popularity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieDets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieDets;
  }

  @override
  void update(void Function(MovieDetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieDets build() {
    final _$result = _$v ??
        new _$MovieDets._(
            budget: budget,
            id: id,
            originalTitle: originalTitle,
            title: title,
            backdropPath: backdropPath,
            rating: rating,
            voteAverage: voteAverage,
            year: year,
            overview: overview,
            status: status,
            runtime: runtime,
            type: type,
            premiere: premiere,
            revenue: revenue,
            homepage: homepage,
            imdb: imdb,
            originalLanguage: originalLanguage,
            popularity: popularity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
