import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:site/core/utils/helper_widgets.dart';

class DesktopContainer extends StatelessWidget {


  final Color? color;
  final bool? shadowOnTop;
  final String lottie;
  final String direction;
  final String header;
  final String text;
  
  const DesktopContainer({Key? key, this.color, this.shadowOnTop, required this.lottie, required this.direction, required this.header, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.15,vertical:MediaQuery.of(context).size.height * 0.05),
      height: MediaQuery.of(context).size.height * 0.35,
      color: color ?? Colors.white,

      child: direction == 'left' ?
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(lottie,height: MediaQuery.of(context).size.height * 0.4,width: MediaQuery.of(context).size.width * 0.35),
          Container(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(header,style: Theme.of(context).textTheme.headline2,maxLines: 1),
                addVerticalSpace(MediaQuery.of(context).size.height * 0.015),
                AutoSizeText(text,style: Theme.of(context).textTheme.bodyText1,maxLines: 3),
              ],
            ),
          )
        ],
      )
          :
      Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(header,style: Theme.of(context).textTheme.headline2,maxLines: 1),
                addVerticalSpace(MediaQuery.of(context).size.height * 0.015),
                AutoSizeText(text,style: Theme.of(context).textTheme.bodyText1,maxLines: 4),
              ],
            ),
          ),
          Lottie.asset(lottie,height: MediaQuery.of(context).size.height * 0.4,width: MediaQuery.of(context).size.width * 0.35),
        ]
      )
    );
  }
}

BoxDecoration ContainerDecoration(bool? shadowOnTop){
  return BoxDecoration(
    
  );
}