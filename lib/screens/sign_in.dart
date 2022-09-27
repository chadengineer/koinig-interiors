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
            children: [
              companyLogo(),
              Stack(
                alignment: Alignment.center,
                children: [
                  bgImage(0.2),
                  Container(
                      height: 240,
                      width: 300,
                      //color: Colors.lightBlue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Welcome back!',
                            style: TextStyle(
                                color: BRAND_WHITE,
                                fontFamily: 'Poppins',
                                fontSize: 22),
                          ),
                          BorderBox(
                            child: Text('Enter username'),
                            width: 300,
                            height: 55,
                          ),
                          BorderBox(
                            child: Text('Password'),
                            width: 300,
                            height: 55,
                          )
                        ],
                      ))
                ],
              )
            ],
          )),
    ));
  }
}
