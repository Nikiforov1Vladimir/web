import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {

  final Function onPressed;
  final String image;

  const AppBarIcon({Key? key, required this.onPressed, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed(),
      iconSize: 30,
      icon: Image(image: AssetImage(image),color: Colors.white),
    );
  }
}
