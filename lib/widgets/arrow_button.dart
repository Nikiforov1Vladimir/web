import 'package:flutter/material.dart';
import 'package:site/core/values/colors.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: IconButton(
          onPressed: (){},
          icon: Image(image: const AssetImage('assets/images/right-arrow.png'),color: appViolet)
      ),
    );
  }
}
