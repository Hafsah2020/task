import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  Card1() : super();
  Widget build(BuildContext context) => Container(
        constraints: BoxConstraints.expand(height: 350, width: 400),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/pink/Capture 14.PNG'),
              fit: BoxFit.cover),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.4,
        ),
      );
}
