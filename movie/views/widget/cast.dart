import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie/views/widgets/cast_details.dart';

class Cast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          child:Text(
            'Cast',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),

    );
  }
}
