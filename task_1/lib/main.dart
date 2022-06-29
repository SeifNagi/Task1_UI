import 'package:flutter/material.dart';
import 'package:task_1/Screens/onboard_first.dart';
import 'package:task_1/Screens/register.dart';
import 'package:task_1/Screens/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: register(),
    );
  }
}
