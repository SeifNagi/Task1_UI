import 'package:flutter/material.dart';
import 'package:task_1/Screens/onboard_second.dart';
import 'package:task_1/components/button.dart';
import 'package:task_1/components/image.dart';
import 'package:task_1/components/text.dart';

import 'register.dart';

class onboardfirst extends StatelessWidget {
  const onboardfirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(250, 60, 0, 0),
            child: mybutton(
              content: 'Skip',
              buttoncolor: Colors.yellow.shade100,
              path: MaterialPageRoute(builder: (context) => register()),
              textcolor: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 130, top: 10),
            child: Row(
              children: [
                textarea(
                  content: '7',
                  colour: Colors.yellow,
                  fontsize: 28,
                ),
                textarea(
                  content: 'krave',
                  colour: Colors.teal,
                  fontsize: 28,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: addimage(
              imagename: 'lib/assets/Envelope-bro.png',
              height: 300,
              width: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: textarea(
                content: 'Get food delivery to your doorstep asap',
                fontsize: 24),
          ),
          textarea(
            content:
                'we have young and professional delivery team that will bring your food as soon as possible to your doorstep ',
            fontsize: 14,
            colour: Colors.black.withOpacity(0.5),
          ),
          Padding(
            padding: EdgeInsets.all(6.0),
            child: mybutton(
              content: 'Get Started',
              textcolor: Colors.white,
              width: 400,
              height: 50,
              buttoncolor: Colors.teal,
              path: MaterialPageRoute(
                builder: (context) => const onboardsecond(),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Row(children: [
            Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: textarea(content: "Don't have an account?")),
            mybutton(
              content: 'Sign up',
              textcolor: Colors.teal,
              width: 120,
              height: 30,
              buttoncolor: Colors.white,
              path: MaterialPageRoute(
                builder: (context) => register(),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
