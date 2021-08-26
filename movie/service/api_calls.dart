import 'dart:convert';

import 'package:built_collection/src/list.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/models/genres.dart';
import 'package:movie/models/movie_details.dart';
import 'package:movie/models/movie.dart';
import 'package:http/http.dart' as http;
import 'package:movie/models/movie_dets.dart';
import 'package:movie/service/movie_service.dart';


class TmdbService implements MovieService  {
  final String url = 'https://api.themoviedb.org/3/movie';
  final String urlPerson = 'https://api.themoviedb.org/3/person';

  final String apiKey = '?api_key=89b7237bbcff0fa06e47811bdf0ea123';
  final String language = 'language=en-US';
  final String topRated = 'top_rated';
  final String upComing = 'upcoming';
  final String popular = 'popular';
  final String imageUrl='https://image.tmdb.org/t/p/w500/';



  @override
  Future<BuiltList<Movie>> getRatedMovies(String page) {
    final String request = '$url/$topRated/$apiKey&$language&page=$page';

    return getMovies(request);
  }

  @override
  Future <BuiltList<Movie>> getMovies(String requestUrl) async {
    try{
      final String request = requestUrl;
      final http.Response response = await http.get(Uri.parse(request));
      final Map<String, dynamic> jsonBody =
      json.decode(response.body) as Map<String, dynamic>;
      print(jsonBody);
      final MovieDetails? movieResponse = MovieDetails.fromJson(jsonBody);
      print(movieResponse);
      return movieResponse!.movies;
    }
    catch(e){
      print(e);
      return <Movie>[].toBuiltList();
    }
  }
  @override
  Future<BuiltList<Genres>> getGenres(Map<String,dynamic> jsonBody) async {
    print(jsonBody);
    final MovieDetails? movieResponse = MovieDetails.fromJson(jsonBody);
    print(movieResponse);
    return movieResponse!.genres;
  }

  @override
  Future <MovieDets> getMovieDets(String requestUrl) async {
    final String request = requestUrl;
    final http.Response response = await http.get(Uri.parse(request));
    final Map<String, dynamic> jsonBody =
    json.decode(response.body) as Map<String, dynamic>;
    print(jsonBody);
    final MovieDets movieResponse = MovieDets.fromJson(jsonBody)!;
    print(movieResponse);
    return movieResponse;
  }

  @override
  Future<BuiltList<Movie>> getUpcomingMovies(String page) {
    final String request = '$url/$upComing/$apiKey&$language&page=$page';

    return getMovies(request);
  }

  @override
  Future<BuiltList<Movie>> getPopularMovies(String page) {
    final String request = '$url/$popular/$apiKey&$language&page=$page';

    return getMovies(request);
  }

  @override
    Future <BuiltList<Cast>> getCastMovie(String requestUrl) async {
    try{
      final String request = requestUrl;
      final http.Response response = await http.get(Uri.parse(request));
      final Map<String, dynamic> jsonBody =
      json.decode(response.body) as Map<String, dynamic>;
      print(jsonBody);
      final MovieDetails? movieResponse = MovieDetails.fromJson(jsonBody);
      print(movieResponse);
      return movieResponse!.cast;
    }
    catch(e)
    {
      print(e);
      return<Cast>[].toBuiltList();
    }
  }
  @override
  Future<BuiltList<Cast>> cast(int id) async {

   try{
     final String request = '$url/$id/credits?api_key=89b7237bbcff0fa06e47811bdf0ea123';
     final http.Response response = await http.get(Uri.parse(request));
     final Map<String, dynamic> jsonBody =
     json.decode(response.body) as Map<String, dynamic>;
     print(jsonBody);
     final MovieDetails? movieResponse = MovieDetails.fromJson(jsonBody);
     print(movieResponse);
     return movieResponse!.cast;
   }catch(e){
     print( e);
     return <Cast>[].toBuiltList();
   }
  }

}





