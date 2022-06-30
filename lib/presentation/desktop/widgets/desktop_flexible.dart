import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';
import 'package:site/core/values/texts.dart';
import 'package:site/widgets/contact_us_button.dart';

class DesktopFlexible extends StatelessWidget {
  const DesktopFlexible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Image(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              image: const AssetImage('assets/images/Business_PNG.png')
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(flexibleText,style: Theme.of(context).textTheme.headline1,maxLines: 3),
              addVerticalSpace(MediaQuery.of(context).size.height * 0.01),
              Text(flexibleTextSubHeader,style: Theme.of(context).textTheme.bodyText2),
              addVerticalSpace(MediaQuery.of(context).size.height * 0.02),
              const ContactUsButton()
            ],
          ),
        ),
      ],
    );
  }
}
