import 'package:flutter/material.dart';
import 'package:movie/models/movie_dets.dart';

class AboutSection extends StatelessWidget {
 final MovieDets movieDets;

  const AboutSection({Key? key,required this.movieDets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 400,
      padding: EdgeInsets.fromLTRB(8, 8, 0, 0),
      child: Row(children: [

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text('Original Title:',style: TextStyle(color: Colors.white),),
              Text('Status:',style: TextStyle(color: Colors.white),),
              Text('Runtime:',style: TextStyle(color: Colors.white),),
              Text('Type:',style: TextStyle(color: Colors.white),),
              Text('Premiere:',style: TextStyle(color: Colors.white),),
              Text('Budget:',style: TextStyle(color: Colors.white),),
              Text('Revenue:',style: TextStyle(color: Colors.white),),
              Text('HomePage:',style: TextStyle(color: Colors.white),),
              Text('Imdb:',style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: DefaultTextStyle(
            style: DefaultTextStyle.of(context).style.copyWith(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(''),
                Text('${movieDets.originalTitle}',),
                Text('${movieDets.status}'),
                Text('${movieDets.runtime}'),
                Text('${movieDets.type}'),
               Text('${movieDets.year}'),
                Text('${movieDets.budget}'),
                Text('${movieDets.revenue}'),
                Text('${movieDets.homepage}'),
                Text('${movieDets.imdb}'),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
