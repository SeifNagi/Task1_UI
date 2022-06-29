import 'package:flutter/material.dart';

class addimage extends StatelessWidget {
  final String imagename;
  double? height = 50;
  double? width = 40;
  addimage({Key? key, required this.imagename, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(imagename),
      height: height,
      width: width,
    );
  }
}
