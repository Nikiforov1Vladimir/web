import 'package:flutter/material.dart';

class ResponsiveLayOut extends StatelessWidget {
  
  final Widget mobileBody;
  final Widget desktopBody;
  
  const ResponsiveLayOut({Key? key, required this.mobileBody, required this.desktopBody}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth < 700){
        return mobileBody;
      }else{
        return desktopBody;
      }
      }
    );
  }
}
