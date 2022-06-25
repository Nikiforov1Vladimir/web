import 'package:flutter/material.dart';

class LogoButton extends StatelessWidget {

  final VoidCallback onPressed;

  const LogoButton({Key? key,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),),
      child: Text('MakeNgo',style: Theme.of(context).textTheme.headline1),
    );
  }
}
