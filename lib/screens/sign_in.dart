import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:konig_interiors/custom/borderBox.dart';
import 'package:konig_interiors/utils/widget_functions.dart';
import 'package:konig_interiors/utils/constants.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
              Stack(
                alignment: Alignment.center,
                children: [
                  bgImage(0.2),
                  SizedBox(
                      height: 240,
                      width: 300,
                      //color: Colors.lightBlue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Welcome back!',
                            style: TextStyle(
                                color: BRAND_WHITE,
                                fontFamily: 'Poppins',
                                fontSize: 22),
                          ),
                          userInfo('Enter username'),
                          userInfo('Password'),
                        ],
                      ))
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 110, 0, 0),
                child: const BorderBox(
                  width: 300,
                  child: Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        color: BRAND_GREY,
                        fontSize: 18),
                  ),
                ),
              )
            ],
          )),
    ));
  }

  TextField userInfo(hintText) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          hintText: hintText,
          filled: true,
          fillColor: const Color.fromARGB(138, 243, 243, 243)),
    );
  }
}
