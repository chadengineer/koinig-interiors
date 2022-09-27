import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


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
          body: Container(
        color: const Color(0xff393E41),
        child: Container(
          margin: const EdgeInsets.all(26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              companyLogo(),
              ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset('assets/images/loadingImage.jpg')),
              welcomeText(),
              actionButtons(),
              guestLogin()
            ],
          ),
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
                        color: Color(0xffC0DA74),
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
            color: const Color(0xffC0DA74),
            child: TextButton(
              child: const Text(
                'Register',
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 73, 73, 73),
                ),
              ),
              onPressed: () {
               // Navigator.pushNamed(context, routeName)
              },
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffEEEEEE), width: 1),
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
                color: Color(0xffEEEEEE),
              ),
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
                      color: Color(0xffA9A9A9),
                      fontWeight: FontWeight.normal,
                      height: 1.4)),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Container companyLogo() {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: const Color(0xffEEEEEE)),
          borderRadius: BorderRadius.circular(8.0)),
      //color: Colors.white,
      padding: const EdgeInsets.all(6.0),
      child: RichText(
          text: const TextSpan(
              text: ' könig ',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Color(0xffC0DA74),
                fontSize: 12,
                letterSpacing: 1,
              ),
              children: [
            TextSpan(
                text: 'interiors ',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal))
          ])),
    );
  }
}
