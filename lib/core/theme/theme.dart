import 'package:flutter/material.dart';

class Themes{
  static final lightTheme = ThemeData(

    appBarTheme: const AppBarTheme(
      elevation: 2,
      backgroundColor: Colors.white,
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