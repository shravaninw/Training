import 'package:flutter/material.dart';
class Year extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:170,
        left: 8,
        child: Container(
      width: 48,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Colors.orange,
      ),


      child:Center(
      child:Text(
        '2020',textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
      ),

    ),);
  }
}
