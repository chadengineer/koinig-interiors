import 'package:flutter/material.dart';
import 'package:konig_interiors/utils/constants.dart';

Widget companyLogo() {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: BRAND_WHITE),
          borderRadius: BorderRadius.circular(8.0)),
      //color: Colors.white,
      padding: const EdgeInsets.all(6.0),
      child: RichText(
          text: const TextSpan(
              text: ' könig ',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: BRAND_GREEN,
                fontSize: 12,
                letterSpacing: 1,
              ),
              children: [
            TextSpan(
                text: 'interiors ',
                style: TextStyle(
                    color: BRAND_WHITE, fontWeight: FontWeight.normal))
          ])),
    );
  }


  Widget bgImage(opacity) {
    return Opacity(
      opacity: opacity,
      child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset('assets/images/loadingImage.jpg')),
    );
  }

  