import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:konig_interiors/utils/widget_functions.dart';
import 'package:konig_interiors/utils/constants.dart';

class LandingPage extends StatelessWidget {
  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
    ..onTap = () {
      debugPrint('Guest login please');
    };

  LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BRAND_GREY,
          body: Container(
            margin: const EdgeInsets.all(26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                companyLogo(),
                bgImage(1.0),
                welcomeText(),
                actionButtons(),
                guestLogin()
              ],
            ),
          )),
    );
  }



  Padding guestLogin() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Center(
        child: RichText(
          text: TextSpan(
              text: 'Or continue as a ',
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                    text: 'guest',
                    style: const TextStyle(
                        color: BRAND_GREEN,
                        decoration: TextDecoration.underline),
                    recognizer: _gestureRecognizer)
              ]),
        ),
      ),
    );
  }

  Row actionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Container(
            width: 130,
            height: 48,
            color: BRAND_GREEN,
            child: TextButton(
              child: const Text(
                'Register',
                style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w700,
                    color: BRAND_GREY),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, routeName)
              },
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: BRAND_WHITE, width: 1),
              borderRadius: BorderRadius.circular(14)),

          width: 130,
          height: 48,
          //color: const Color(0xffC0DA74),
          child: TextButton(
            child: const Text(
              'Sign In',
              style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w700,
                  color: BRAND_WHITE),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Center welcomeText() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(45, 45, 45, 60),
        child: RichText(
          text: const TextSpan(
            text: 'Hello!',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                fontWeight: FontWeight.bold,
                height: 2),
            children: [
              TextSpan(
                  text:
                      '\nWelcome to König Interiors\nDream work setup for every home',
                  style: TextStyle(
                      fontSize: 12,
                      color: BRAND_LIGHTGREY,
                      fontWeight: FontWeight.normal,
                      height: 1.4)),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
  
}

