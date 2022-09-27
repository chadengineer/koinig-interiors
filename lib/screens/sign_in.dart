import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:konig_interiors/utils/widget_functions.dart';
import 'package:konig_interiors/utils/constants.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: BRAND_GREY,
      body: Container(margin: const EdgeInsets.all(26), child: companyLogo()),
    ));
  }
}
