import 'package:flutter/material.dart';
import 'package:site/core/values/colors.dart';

class Themes{
  static final lightTheme = ThemeData(

    scaffoldBackgroundColor: appWhite,

    appBarTheme: const AppBarTheme(
      elevation: 10,
      backgroundColor: appViolet,
    ),

    textTheme: const TextTheme(
      headline1: TextStyle(
        color: appWhite,
        fontSize: 40,
      ),
      headline2: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 40
      ),
      headline3: TextStyle(
        color: appWhite,
        fontSize: 30,
      ),
      headline4: TextStyle(
        color: appWhite,
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),
      bodyText1: TextStyle(
        fontSize: 20,
        height: 1.5,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
        bodyText2: TextStyle(
          height: 1.3,
          color: appWhite,
          fontWeight: FontWeight.w500,
        ),
      button: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: appViolet
      )
    )
  );
}