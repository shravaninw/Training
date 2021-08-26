import 'package:flutter/material.dart';
import 'package:movie/models/movie_dets.dart';

class CategoryTwo extends StatelessWidget {
  const CategoryTwo({Key? key,required this.movieDets}) : super(key: key);
 final MovieDets movieDets;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 260,
      left: 80,
      child: Container(
        width: 56,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          color: Colors.grey,
        ),
        child: Center(
          child: Text(
           'Thriller',
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
