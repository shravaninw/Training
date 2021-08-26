import 'package:flutter/material.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/models/movie_dets.dart';
class TitleSection extends StatelessWidget {
  final MovieDets movieDets;

  const TitleSection({Key? key,required this.movieDets}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top:220,
        left: 8,
        child: Text(
          '${movieDets.title}',style: TextStyle(color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
        ));
  }
}
