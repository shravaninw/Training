import 'package:flutter/material.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/views/movie_review.dart';
import '../../service/api_call.dart';
import 'package:movie/service/movie_service.dart';

class ImageSection extends StatelessWidget {

   ImageSection({Key? key,required this.movie}) : super(key: key);
   MovieService tmdbService = TmdbService() ;


  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MovieReview(movie: movie,)),
        );
      },
      child: Column(
        children: [
          Expanded(
            flex: 1,
              child: Image.network('${tmdbService.imageUrl}${movie.posterPath}')),
          Text(
            '${movie.title}',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
