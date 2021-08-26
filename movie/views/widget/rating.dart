import 'package:flutter/material.dart';
import 'package:movie/models/movie_dets.dart';

class Rating extends StatelessWidget {
  const Rating({Key? key,required this.movieDets}) : super(key: key);
 final MovieDets movieDets;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 170,
      left: 80,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          color: Colors.orange,
        ),
        child: Center(
          child: Text(
            '${movieDets.voteAverage}',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
