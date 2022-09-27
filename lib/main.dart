import 'package:flutter/material.dart';
import 'package:konig_interiors/screens/landing_screen.dart';
import 'package:konig_interiors/screens/sign_in.dart';

void main() => runApp(MaterialApp(
      title: 'könig interiors',
      debugShowCheckedModeBanner: false,
      initialRoute: '/signin',
      routes: {
        '/': (context) => LandingPage(),
        '/signin': (context) => SignIn()
      },
    ));
