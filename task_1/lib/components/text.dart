import 'package:flutter/material.dart';

class textarea extends StatelessWidget {
  final String content;
  Color? colour = Colors.black;
  double? fontsize = 24;
  double leftpad = 40.0;
  double rightpad = 0.0;
  double toppad = 0.0;
  double bottompad = 0.0;

  textarea({
    Key? key,
    required this.content,
    this.colour,
    this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      content,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: colour,
        fontSize: fontsize,
      ),
    ));
  }
}
