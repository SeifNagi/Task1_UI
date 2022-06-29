import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task_1/Screens/onboard_first.dart';
import 'package:task_1/Screens/onboard_second.dart';
import 'package:task_1/Screens/register.dart';
import 'package:task_1/components/button.dart';
import 'package:task_1/components/form.dart';
import 'package:task_1/components/image.dart';
import 'package:task_1/components/text.dart';

class signin extends StatelessWidget {
  TextEditingController phoneController = new TextEditingController();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      addimage(
          imagename: 'lib/assets/Software integration.png',
          height: 300,
          width: 500),
      Padding(
        padding: EdgeInsets.only(
          right: 140,
        ),
        child: textarea(
          content: 'welcome to Fashion Daily',
          colour: Colors.black45,
          fontsize: 16,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Row(
          children: [
            textarea(
              content: 'Sign in',
              colour: Colors.black,
              fontsize: 42,
            ),
            SizedBox(width: 70),
            mybutton(
              content: 'Help',
              buttoncolor: Colors.white,
              textcolor: Colors.blueAccent,
              path: MaterialPageRoute(
                builder: (context) => const onboardsecond(),
              ),
            ),
            Icon(Icons.help, color: Colors.blueAccent),
          ],
        ),
      ),
      Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 200, top: 20),
              child: Column(
                children: [
                  textarea(
                    content: 'Phone Number',
                    fontsize: 16,
                    colour: Colors.black45,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: myform(
                      type: TextInputType.phone,
                      radius: 30,
                      isPass: false,
                      errormessage: 'invalid number',
                      validataion: (str) {
                        if (str!.isEmpty) {
                          return ('common.required');
                        }
                        if (str.length != 10) {
                          return ('invalid number');
                        }

                        return null;
                      },
                      controller: phoneController,
                      labelcontent: 'phone number',
                    ),
                  ),
                  CountryCodePicker(
                    onChanged: print,
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'IT',
                    favorite: ['+39', 'FR'],
                    countryFilter: ['IT', 'FR'],
                    // flag can be styled with BoxDecoration's `borderRadius` and `shape` fields
                    flagDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      mybutton(
        content: 'Sign in',
        width: double.infinity,
        path: MaterialPageRoute(
          builder: (context) => const onboardfirst(),
        ),
      ),
      textarea(
        content: 'OR',
        colour: Colors.black45,
      ),
      mybutton(
        content: 'Sign in with google',
        width: double.infinity,
        buttoncolor: Colors.white,
        textcolor: Colors.blueAccent,
        path: MaterialPageRoute(
          builder: (context) => const onboardfirst(),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Row(children: [
          textarea(content: "Doesn't has any account?"),
          mybutton(
            content: 'Register here',
            buttoncolor: Colors.white,
            textcolor: Colors.blueAccent,
            path: MaterialPageRoute(
              builder: (context) => register(),
            ),
          ),
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: textarea(
          content:
              'Use the application according to policy rules. Any kinds of violations will be subject to sanctions.',
          colour: Colors.black26,
          fontsize: 14,
        ),
      )
    ])));
  }
}
