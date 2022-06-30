import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:site/core/utils/helper_widgets.dart';

class MobileContainer extends StatelessWidget {

  final String header;
  final String text;
  final String lottie;
  final Color? color;

  const MobileContainer({Key? key, required this.text, required this.header, required this.lottie, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.15,vertical:MediaQuery.of(context).size.height * 0.04),
      height: MediaQuery.of(context).size.height * 0.55,
      color: color ?? Colors.white,

      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Lottie.asset(lottie,height: MediaQuery.of(context).size.height * 0.3,width: MediaQuery.of(context).size.width * 0.7)),
          Column(
            children: [
              AutoSizeText(header,style: Theme.of(context).textTheme.headline2,textAlign: TextAlign.center,maxLines: 1),
              addVerticalSpace(MediaQuery.of(context).size.height * 0.02),
              AutoSizeText(text,style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.center,maxLines: 3),
              addVerticalSpace(MediaQuery.of(context).size.height * 0.02),
            ],
          ),
        ],
      ),
    );
  }
}
