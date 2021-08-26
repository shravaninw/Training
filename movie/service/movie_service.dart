import 'package:movie/models/movie.dart';
import 'package:built_collection/built_collection.dart';
import 'package:movie/models/genres.dart';
import 'package:movie/models/movie_dets.dart';
import 'package:movie/models/cast.dart';

abstract class MovieService {
  final String url = 'https://api.themoviedb.org/3/movie';
  final String urlPerson = 'https://api.themoviedb.org/3/person';

  final String apiKey = '?api_key=89b7237bbcff0fa06e47811bdf0ea123';
  final String language = 'language=en-US';
  final String topRated = 'top_rated';
  final String upComing = 'upcoming';
  final String popular = 'popular';
  final String imageUrl='https://image.tmdb.org/t/p/w500/';
  @override
  Future<BuiltList<Movie>> getRatedMovies(String page);
  @override
  Future <BuiltList<Movie>> getMovies(String requestUrl);
  @override
  Future<BuiltList<Genres>> getGenres(Map<String,dynamic> jsonBody);
  @override
  Future <MovieDets> getMovieDets(String requestUrl);
  @override
  Future<BuiltList<Movie>> getUpcomingMovies(String page);
  @override
  Future<BuiltList<Movie>> getPopularMovies(String page);
  @override
  Future <BuiltList<Cast>> getCastMovie(String requestUrl);
  @override
  Future<BuiltList<Cast>> cast(int id);
  }
