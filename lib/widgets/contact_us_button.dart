import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:site/core/values/colors.dart';

class ContactUsButton extends StatelessWidget {

  const ContactUsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02),
      color: appWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      height: MediaQuery.of(context).size.height * 0.03,
      minWidth: MediaQuery.of(context).size.height * 0.15,
      splashColor: appViolet,
      onPressed: (){},
      child: AutoSizeText('Написать нам',style: Theme.of(context).textTheme.button),
    );
  }
}
