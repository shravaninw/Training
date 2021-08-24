import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 300,
      child: Stack(

      children: [
        ImagePoster(),
        Back(),
        BookTicket(),
        Year(),
        Rating(),
        TitleSection(),
        CategoryOne(),
        CategoryTwo(),
        CategoryThree(),









      ],
    ),);
  }
}
