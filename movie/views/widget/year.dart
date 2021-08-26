import 'package:flutter/material.dart';
import 'package:movie/models/movie_dets.dart';
class Year extends StatelessWidget {
  const Year({Key? key, required this.movieDets}) : super(key: key);
  final MovieDets movieDets;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:170,
        left: 8,
        child: Container(
      width: 48,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Colors.orange,
      ),


      child:Center(
      child:Text(
        '${movieDets.year}',textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
      ),

    ),);
  }
}
