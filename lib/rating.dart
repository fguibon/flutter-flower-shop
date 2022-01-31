import 'package:flutter/material.dart';

class Rating extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
        ),
        Icon(
          Icons.star,
          color: Colors.white,
        ),
        Icon(
          Icons.star,
          color: Colors.white,
        ),
        Icon(
          Icons.star,
          color: Colors.white,
        ),
        Icon(
          Icons.star_border_outlined,
          color: Colors.white,
        ),
      ],
    );
  }
}