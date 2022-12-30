import 'package:doctor_consultant_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class DoctorAppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      dividerColor: kGreyColor800,
      backgroundColor: kWhiteColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      // fontFamily: GoogleFonts.lato().fontFamily,
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: kBlackColor900,
          fontSize: 34,
          fontWeight: FontWeight.w400,
        ),
        headline2: TextStyle(
          color: kBlackColor900,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        headline3: TextStyle(
          color: kBlackColor900,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        headline4: TextStyle(
          color: kBlackColor800,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        headline5: TextStyle(
          color: kGreyColor800,
          fontSize: 14,
          // fontFamily: GoogleFonts.sourceSansPro().fontFamily,
          fontWeight: FontWeight.w400,
        ),
        headline6: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        bodyText1: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
        bodyText2: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
