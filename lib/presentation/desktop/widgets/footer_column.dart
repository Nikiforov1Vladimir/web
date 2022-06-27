import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';

class FooterColumn extends StatelessWidget {

  final String header;
  final String firstTextButton;
  final VoidCallback? firstTextButtonPressed;

  const FooterColumn({Key? key, required this.header, required this.firstTextButton, this.firstTextButtonPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header,style: Theme.of(context).textTheme.headline4),
        addVerticalSpace(MediaQuery.of(context).size.height * 0.02),
        InkWell(
            onTap: firstTextButtonPressed,
            child: Text(firstTextButton,style: Theme.of(context).textTheme.bodyText2,textAlign: TextAlign.left)
        ),
      ],
    );
  }
}
