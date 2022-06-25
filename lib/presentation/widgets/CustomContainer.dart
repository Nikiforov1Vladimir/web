import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  
  final Color? color;
  final bool? shadowOnTop;
  
  CustomContainer({Key? key, this.color, this.shadowOnTop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.3,
      color: color ?? Colors.blue,

      child: Wrap(
        children: [
          SizedBox(width: 50,
              child: Text('Lorem babich')),
          SizedBox(width: 600,height: 200,child: Image(image: AssetImage('assets/images/test_image_1.jpg')))
        ],
      ),
      
    );
  }
}

BoxDecoration ContainerDecoration(bool? shadowOnTop){
  return BoxDecoration(
    
  );
}