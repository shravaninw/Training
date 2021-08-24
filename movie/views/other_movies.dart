import 'package:flutter/material.dart';
import 'package:movie/views/widgets/cast_movie.dart';

class OtherMovies extends StatelessWidget {
  const OtherMovies({Key? key, required this.imageurl, required this.name})
      : super(key: key);
  final String imageurl;
  final String name;

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
                      image: AssetImage('$imageurl',),
                      fit: BoxFit.cover,
                  ),
                ),
                ),
              ),
              Text(
                '$name',
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
            CastMovie(),
            CastMovie()



          ]
        ),

      ),
    );
  }
}
