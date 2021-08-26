import 'package:flutter/material.dart';
import 'package:movie/models/movie_dets.dart';
class Description extends StatelessWidget {
  const Description({Key? key,required this.movieDets}) : super(key: key);
 final MovieDets movieDets;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 16, 0, 0),
      child: Text(
         '${movieDets.overview}', style: TextStyle(color: Colors.white),
        softWrap: true,
      ),
    );
  }
}
