import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  final String content;
  final Route path;
  double? height = 50;
  double? width = 40;
  double? radius = 20;
  double hehe = 50;
  Color? textcolor = Colors.white;
  Color? buttoncolor = Colors.teal;
  mybutton(
      {Key? key,
      required this.content,
      this.buttoncolor,
      this.textcolor,
      this.height,
      this.width,
      this.radius,
      required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, path);
          },
          child: Text(
            content,
            style: TextStyle(color: textcolor),
          ),
          style: ElevatedButton.styleFrom(
            primary: buttoncolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0), // <-- Radius
            ),
          )),
    );
  }
}
