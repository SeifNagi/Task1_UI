import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:task_1/Screens/onboard_second.dart';
import 'package:task_1/Screens/register.dart';
import 'package:task_1/Screens/signin.dart';
import 'package:task_1/components/button.dart';
import 'package:task_1/components/form.dart';
import 'package:task_1/components/image.dart';
import 'package:task_1/components/text.dart';

class register extends StatelessWidget {
  TextEditingController phoneController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      addimage(
        imagename: 'lib/assets/Software integration.png',
        width: 150,
        height: 150,
      ),
      Padding(
        padding: EdgeInsets.only(right: 140),
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
              content: 'Register',
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
                  Padding(
                    padding: EdgeInsets.only(right: 70),
                    child: textarea(
                      content: 'Email',
                      colour: Colors.black45,
                      fontsize: 16,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: myform(
                      type: TextInputType.emailAddress,
                      radius: 30,
                      isPass: false,
                      errormessage: 'invalid number',
                      validataion: (str) {
                        if (str!.isEmpty) {
                          return ('common.required');
                        }

                        return null;
                      },
                      controller: emailController,
                      labelcontent: 'email address',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: textarea(
                      content: 'Password',
                      colour: Colors.black45,
                      fontsize: 16,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: myform(
                      type: TextInputType.text,
                      radius: 30,
                      isPass: true,
                      errormessage: 'invalid number',
                      validataion: (str) {
                        if (str!.isEmpty) {
                          return ('common.required');
                        }
                        if (str.length != 10) {
                          return ('weak pass');
                        }

                        return null;
                      },
                      controller: passwordController,
                      labelcontent: 'password',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
        content: 'Register',
        width: double.infinity,
        path: MaterialPageRoute(
          builder: (context) => signin(),
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
          builder: (context) => signin(),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Row(children: [
          textarea(content: "Has any account?"),
          mybutton(
            content: 'Sign in here',
            buttoncolor: Colors.white,
            textcolor: Colors.blueAccent,
            path: MaterialPageRoute(
              builder: (context) => signin(),
            ),
          ),
        ]),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: textarea(
          content: 'By regestring your account, you are agree to our',
          colour: Colors.black26,
          fontsize: 14,
        ),
      ),
      mybutton(
        content: 'terms and condition',
        path: MaterialPageRoute(builder: (context) => register()),
      ),
    ])));
  }
}
