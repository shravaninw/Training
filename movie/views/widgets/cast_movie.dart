import 'package:flutter/material.dart';
import 'package:movie/views/widgets/movie_tab.dart';
class CastMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MovieTab(imageurl: 'assets/images/2.jpg', title:'Bad Boys For Life', rating: '6.7', category1: 'Action', category2: 'Crime', category3: 'Thriller', year: '2020'),
        MovieTab(imageurl: 'assets/images/2.jpg', title:'Bad Boys For Life', rating: '6.7', category1: 'Action', category2: 'Crime', category3: 'Thriller', year: '2020'),
      ],
    );
  }
}
