import 'package:flutter/material.dart';
class ImagePoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/images/2.jpg'), fit: BoxFit.cover),
    ));
  }
}
