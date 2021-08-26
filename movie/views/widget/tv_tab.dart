import 'package:flutter/material.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/models/cast_details.dart';
import 'package:movie/service/api_call.dart';
import 'package:movie/service/movie_service.dart';

class TvTab extends StatelessWidget {
  TvTab({Key? key,required this.cast}) : super(key: key);

  MovieService tmdbService=TmdbService() ;
  final Cast cast;


  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){},

        child: Container(
          height: 300,
          padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
          color: Colors.black54,
          child: Column(
              children: [
                Image.network('${tmdbService.imageUrl}${cast.backdropPath}'),
                Row(
                  children: [
                    Text(
                      '${cast.name}',
                      style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      softWrap: true,
                    ),
                    Expanded(child: Container()),

                    Text(
                      '${cast.rating}',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Action,Thriller,Comedy',
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    Text(
                      '${cast.firstAirDate}',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    )
                  ],
                )



              ]
          ),
        ) );
  }
}
