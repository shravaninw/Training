import 'package:flutter/material.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/models/movie_dets.dart';
import 'back.dart';
import 'book_ticket.dart';
import 'image_poster.dart';
import 'title.dart';
import 'rating.dart';
import 'year.dart';
import 'category/category_one.dart';
import 'category/category_two.dart';
import 'category/category_three.dart';
class MoviePoster extends StatelessWidget {
  const MoviePoster({Key? key, required this.movieDets}) : super(key: key);
  final MovieDets movieDets;

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 300,
      child: Stack(

      children: [
        ImagePoster(movieDets:movieDets),
        Back(),
        BookTicket(),
        Year(movieDets: movieDets,),
        Rating(movieDets: movieDets,),
        TitleSection(movieDets: movieDets),
        CategoryOne(movieDets: movieDets),
        CategoryTwo(movieDets: movieDets),
        CategoryThree(movieDets: movieDets),









      ],
    ),);
  }
}
