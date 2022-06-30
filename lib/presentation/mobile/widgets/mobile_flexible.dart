import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';
import 'package:site/core/values/texts.dart';
import 'package:site/widgets/contact_us_button.dart';

class MobileFlexible extends StatelessWidget {
  const MobileFlexible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.065),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Image(image: const AssetImage('assets/images/Business_PNG.png'),height: MediaQuery.of(context).size.height * 0.2)
          ),
          Column(
            children: [
              AutoSizeText(flexibleText,style: Theme.of(context).textTheme.headline1,textAlign: TextAlign.center,maxLines: 3),
              addVerticalSpace(MediaQuery.of(context).size.height * 0.03),
              const ContactUsButton(),
              addVerticalSpace(MediaQuery.of(context).size.height * 0.05),
            ],
          )
        ],
      ),
    );
  }
}
