import 'package:flutter/material.dart';
import 'package:movie/views/widgets/cast_details.dart';
class CastImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(

        scrollDirection: Axis.horizontal,

          children: [
            CastDetails(
                casturl: 'assets/images/willsmith.jpg', name: 'willsmith'),
            CastDetails(
                casturl: 'assets/images/willsmith.jpg', name: 'willsmith'),
            CastDetails(
                casturl: 'assets/images/willsmith.jpg', name: 'willsmith'),

            CastDetails(
                casturl: 'assets/images/willsmith.jpg', name: 'willsmith'),
            CastDetails(
                casturl: 'assets/images/willsmith.jpg', name: 'willsmith'),
            CastDetails(
                casturl: 'assets/images/willsmith.jpg', name: 'willsmith'),
            CastDetails(
                casturl: 'assets/images/willsmith.jpg', name: 'willsmith'),
          ],


      ),
    );
  }
}
