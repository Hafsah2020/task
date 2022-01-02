import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  final String tag;
  Tags({required this.tag}) : super();
  Widget build(BuildContext context) {
    return Chip(
      label: Text(tag),
      // backgroundColor: Colors.green,
    );
  }
}
