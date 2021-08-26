import 'package:flutter/material.dart';
import 'package:movie/models/movie_dets.dart';
class CategoryThree extends StatelessWidget {
 final MovieDets movieDets;

  const CategoryThree({Key? key,required this.movieDets}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 260,
      left:156,
      child:Container(
        width: 56,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          color: Colors.grey,
        ),

        child:Center(
          child: Text(
         'Comedy',
          style: TextStyle(color: Colors.white, ),
          textAlign: TextAlign.center,),
      ),)

    );
  }
}
