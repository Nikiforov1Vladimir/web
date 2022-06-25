import 'package:flutter/material.dart';

class FlexibleComponent extends StatelessWidget {
  const FlexibleComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/test_image_1.jpg'),fit: BoxFit.cover)
      ),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.2,  
            child: FittedBox(child: Text('Сделаем для вас сайт или мобильное приложение',style: Theme.of(context).textTheme.headline1))),
      ),

    );
  }
}
