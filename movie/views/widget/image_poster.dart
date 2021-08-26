import 'package:flutter/material.dart';
import 'package:movie/models/movie_dets.dart';
class ImagePoster extends StatelessWidget {
  ImagePoster({Key? key, required this.movieDets}) : super(key: key);
  final MovieDets movieDets;



  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: NetworkImage('https://image.tmdb.org/t/p/w500/${movieDets.backdropPath}'), fit: BoxFit.cover),
    ));
  }
}
