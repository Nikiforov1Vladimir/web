import 'package:flutter/material.dart';
import 'package:site/core/values/colors.dart';

class PortfolioComponent extends StatelessWidget {

  final String text;

  const PortfolioComponent({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.01),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.22,
        width: MediaQuery.of(context).size.width * 0.22,
        child: FittedBox(
          child: Text(text),
        ),
      ),
    );
  }
}
