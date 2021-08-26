import 'package:flutter/material.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/views/widgets/cast_movie.dart';

class OtherMovies extends StatelessWidget {
  final Cast cast;

  const OtherMovies({Key? key, required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 240,
          backgroundColor: Colors.black,
          title:Column(
            children: [
              Container(

              child:Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                    image:DecorationImage(
                      image: NetworkImage('https://image.tmdb.org/t/p/w500/${cast.profilePath}',),
                      fit: BoxFit.cover,
                  ),
                ),
                ),
              ),
              Text(
                '${cast.name}',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        bottom: TabBar(
            tabs: [
              Tab(
    child: Icon(Icons.movie)),
              Tab(
                child: Icon(Icons.tv),
              )

  ],  ),),
        body: TabBarView(
          children:[
            CastMovie(cast: cast,tab: 'Movie',),
            CastMovie(cast: cast,tab: 'Tv',)



          ]
        ),

      ),
    );
  }
}
