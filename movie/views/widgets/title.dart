import 'package:flutter/material.dart';
class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top:220,
        left: 8,
        child: Text(
          'Bad Boys For Life',style: TextStyle(color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
        ));
  }
}
