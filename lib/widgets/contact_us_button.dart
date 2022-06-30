import 'package:flutter/material.dart';
import 'package:site/core/values/colors.dart';

class ContactUsButton extends StatelessWidget {

  const ContactUsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: appWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      height: MediaQuery.of(context).size.height * 0.035,
      minWidth: MediaQuery.of(context).size.height * 0.13,
      splashColor: appViolet,
      onPressed: (){},
      child: Text('Написать нам',style: Theme.of(context).textTheme.button),
    );
  }
}
