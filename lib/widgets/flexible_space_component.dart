import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';
import 'package:site/core/values/colors.dart';
import 'package:site/core/values/texts.dart';
import 'package:site/widgets/contact_us_button.dart';

class FlexibleComponent extends StatelessWidget {

  final Widget child;

  const FlexibleComponent({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
        child: child,
    );
  }
}
