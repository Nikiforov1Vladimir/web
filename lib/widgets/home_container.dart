import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {

  final Color? color;

  const HomeContainer({Key? key, this.color}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        boxShadow: [
          BoxShadow(

          )
        ]
      ),

    );
  }
}
