import 'package:flutter/material.dart';
import 'package:site/core/values/colors.dart';

class AppIconButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String icon;

  const AppIconButton({Key? key, required this.onPressed, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,

        splashRadius: 25,
        splashColor: appWhite,
        iconSize: 30,

        icon: Image(image: AssetImage(icon),color: appWhite)
    );
  }
}
