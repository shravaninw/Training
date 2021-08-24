import 'package:flutter/material.dart';

class Movie {}


class MovieTab extends StatelessWidget {
  const MovieTab(
      {Key? key,
      required this.imageurl,
      required this.title,
      required this.rating,
      required this.category1,
      required this.category2,
      required this.category3,
      required this.year})
      : super(key: key);
  final String imageurl;
  final String title;
  final String rating;
  final String category1;
  final String category2;
  final String category3;
  final String year;

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
      color: Colors.black54,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            child: Image.asset(
      '$imageurl',
              fit: BoxFit.fitWidth,
            ),
          ),
          Row(
            children: [
              Text(
                '$title',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Expanded(child: Container()),
              Text(
                '$rating',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.star,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '$category1,$category2,$category3',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 210,
              ),
              Text(
                '$year',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.calendar_today,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
