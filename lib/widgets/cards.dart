import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final images;
  Card1({required this.images}) : super();
  Widget build(BuildContext context) => Container(
        constraints: BoxConstraints.expand(height: 350, width: 400),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(images), fit: BoxFit.cover),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.4,
        ),
      );
}
