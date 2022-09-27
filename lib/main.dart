import 'package:flutter/material.dart';
import 'package:konig_interiors/pages/landing_page.dart';
import 'package:konig_interiors/pages/sign_in.dart';

void main() => runApp(MaterialApp(
      title: 'könig interiors',
      debugShowCheckedModeBanner: false,
      initialRoute: '/signin',
      routes: {
        '/': (context) => LandingPage(),
        '/signin': (context) => SignIn()
      },
    ));
