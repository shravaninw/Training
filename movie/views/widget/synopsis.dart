import 'package:flutter/material.dart';

class Synopsis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Synopsis',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 34),
      ),
    );
  }
}
