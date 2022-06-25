import 'package:flutter/material.dart';
import 'package:site/core/values/colors.dart';

class Themes{
  static final lightTheme = ThemeData(

    appBarTheme: const AppBarTheme(
      elevation: 10,
      backgroundColor: appViolet,
    ),

    iconTheme: const IconThemeData(
      size: 30
    ),

    textTheme: const TextTheme(

      headline1: TextStyle(
        color: Colors.white,
        fontSize: 36,
        shadows: [
          Shadow(
            offset: Offset(2.0, 2.0),
            blurRadius: 4.0,
            color: Colors.black
          )
        ]
      )


    )

  );
}