import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MobilePortfolio extends StatelessWidget {
  const MobilePortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.05,horizontal: MediaQuery.of(context).size.width * 0.15),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,

      child: Column(
        children: [
          AutoSizeText('Наши работы',style: Theme.of(context).textTheme.headline2,maxLines: 1),
        ],
      ),
    );
  }
}
