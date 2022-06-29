import 'package:flutter/material.dart';

class myform extends StatelessWidget {
  final String labelcontent;
  final FormFieldValidator<String> validataion;
  bool isPass = false;
  String errormessage;
  TextInputType type = TextInputType.text;
  double radius = 20.0;
  TextEditingController controller;
  myform({
    Key? key,
    required this.labelcontent,
    required this.controller,
    required this.validataion,
    required this.type,
    required this.radius,
    required this.isPass,
    required this.errormessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: double.infinity,
        child: TextFormField(
          validator: validataion,
          keyboardType: type,
          obscureText: isPass,
          decoration: InputDecoration(
              labelText: labelcontent,
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: radius)),
        ));
  }
}
