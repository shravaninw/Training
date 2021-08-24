import 'package:flutter/material.dart';
class Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:24,
      left:4,
      child: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      );
  }

}
