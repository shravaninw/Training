import 'package:flutter/material.dart';
import '../other_movies.dart';
class CastDetails extends StatelessWidget {
  const CastDetails({Key? key, required this.casturl, required this.name})
      : super(key: key);
  final String casturl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OtherMovies(imageurl: 'assets/images/willsmith.jpg', name:'willsmith')));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: AspectRatio(
          aspectRatio:1,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('$casturl'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.bottomLeft,
            child: Text(
              '$name',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
