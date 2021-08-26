// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Movie> _$movieSerializer = new _$MovieSerializer();

class _$MovieSerializer implements StructuredSerializer<Movie> {
  @override
  final Iterable<Type> types = const [Movie, _$Movie];
  @override
  final String wireName = 'Movie';

  @override
  Iterable<Object?> serialize(Serializers serializers, Movie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.posterPath;
    if (value != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('original_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
        ..add('tagline')
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
    value = object.budget;
    if (value != null) {
      result
        ..add('budget')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
        ..add('imdb')
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
    value = object.voteCount;
    if (value != null) {
      result
        ..add('vote_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.genre;
    if (value != null) {
      result
        ..add('genre_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(List, const [const FullType(int)])));
    }
    value = object.backdropPath;
    if (value != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Movie deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'original_title':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
        case 'tagline':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'premiere':
          result.premiere = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imdb':
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
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'genre_id':
          result.genre = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(int)]))
              as List<int>?;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Movie extends Movie {
  @override
  final String? posterPath;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? name;
  @override
  final String? rating;
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
  final int? budget;
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
  @override
  final int? voteCount;
  @override
  final List<int>? genre;
  @override
  final String? backdropPath;

  factory _$Movie([void Function(MovieBuilder)? updates]) =>
      (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {this.posterPath,
      this.id,
      this.title,
      this.name,
      this.rating,
      this.year,
      this.overview,
      this.status,
      this.runtime,
      this.type,
      this.premiere,
      this.budget,
      this.revenue,
      this.homepage,
      this.imdb,
      this.originalLanguage,
      this.popularity,
      this.voteCount,
      this.genre,
      this.backdropPath})
      : super._();

  @override
  Movie rebuild(void Function(MovieBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        posterPath == other.posterPath &&
        id == other.id &&
        title == other.title &&
        name == other.name &&
        rating == other.rating &&
        year == other.year &&
        overview == other.overview &&
        status == other.status &&
        runtime == other.runtime &&
        type == other.type &&
        premiere == other.premiere &&
        budget == other.budget &&
        revenue == other.revenue &&
        homepage == other.homepage &&
        imdb == other.imdb &&
        originalLanguage == other.originalLanguage &&
        popularity == other.popularity &&
        voteCount == other.voteCount &&
        genre == other.genre &&
        backdropPath == other.backdropPath;
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
                                                                            $jc($jc(0, posterPath.hashCode),
                                                                                id.hashCode),
                                                                            title.hashCode),
                                                                        name.hashCode),
                                                                    rating.hashCode),
                                                                year.hashCode),
                                                            overview.hashCode),
                                                        status.hashCode),
                                                    runtime.hashCode),
                                                type.hashCode),
                                            premiere.hashCode),
                                        budget.hashCode),
                                    revenue.hashCode),
                                homepage.hashCode),
                            imdb.hashCode),
                        originalLanguage.hashCode),
                    popularity.hashCode),
                voteCount.hashCode),
            genre.hashCode),
        backdropPath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('posterPath', posterPath)
          ..add('id', id)
          ..add('title', title)
          ..add('name', name)
          ..add('rating', rating)
          ..add('year', year)
          ..add('overview', overview)
          ..add('status', status)
          ..add('runtime', runtime)
          ..add('type', type)
          ..add('premiere', premiere)
          ..add('budget', budget)
          ..add('revenue', revenue)
          ..add('homepage', homepage)
          ..add('imdb', imdb)
          ..add('originalLanguage', originalLanguage)
          ..add('popularity', popularity)
          ..add('voteCount', voteCount)
          ..add('genre', genre)
          ..add('backdropPath', backdropPath))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie? _$v;

  String? _posterPath;
  String? get posterPath => _$this._posterPath;
  set posterPath(String? posterPath) => _$this._posterPath = posterPath;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _rating;
  String? get rating => _$this._rating;
  set rating(String? rating) => _$this._rating = rating;

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

  int? _budget;
  int? get budget => _$this._budget;
  set budget(int? budget) => _$this._budget = budget;

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

  int? _voteCount;
  int? get voteCount => _$this._voteCount;
  set voteCount(int? voteCount) => _$this._voteCount = voteCount;

  List<int>? _genre;
  List<int>? get genre => _$this._genre;
  set genre(List<int>? genre) => _$this._genre = genre;

  String? _backdropPath;
  String? get backdropPath => _$this._backdropPath;
  set backdropPath(String? backdropPath) => _$this._backdropPath = backdropPath;

  MovieBuilder();

  MovieBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _posterPath = $v.posterPath;
      _id = $v.id;
      _title = $v.title;
      _name = $v.name;
      _rating = $v.rating;
      _year = $v.year;
      _overview = $v.overview;
      _status = $v.status;
      _runtime = $v.runtime;
      _type = $v.type;
      _premiere = $v.premiere;
      _budget = $v.budget;
      _revenue = $v.revenue;
      _homepage = $v.homepage;
      _imdb = $v.imdb;
      _originalLanguage = $v.originalLanguage;
      _popularity = $v.popularity;
      _voteCount = $v.voteCount;
      _genre = $v.genre;
      _backdropPath = $v.backdropPath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Movie;
  }

  @override
  void update(void Function(MovieBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    final _$result = _$v ??
        new _$Movie._(
            posterPath: posterPath,
            id: id,
            title: title,
            name: name,
            rating: rating,
            year: year,
            overview: overview,
            status: status,
            runtime: runtime,
            type: type,
            premiere: premiere,
            budget: budget,
            revenue: revenue,
            homepage: homepage,
            imdb: imdb,
            originalLanguage: originalLanguage,
            popularity: popularity,
            voteCount: voteCount,
            genre: genre,
            backdropPath: backdropPath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
