import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {

  final Function onPressed;
  final String icon;

  const AppIconButton({Key? key, required this.onPressed, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed(),
        child: Image(image: AssetImage(icon))
    );
  }
}
