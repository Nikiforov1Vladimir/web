import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';
import 'package:site/core/values/colors.dart';
import 'package:site/core/values/texts.dart';
import 'package:site/widgets/contact_us_button.dart';

class FlexibleComponent extends StatelessWidget {
  const FlexibleComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.15,right: MediaQuery.of(context).size.width * 0.1),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
        child:Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Image(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.5,
                  image: const AssetImage('assets/images/test_image_1.jpg')
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(flexibleText,style: Theme.of(context).textTheme.headline1),
                  addVerticalSpace(MediaQuery.of(context).size.height * 0.01),
                  Text(flexibleTextSubHeader,style: Theme.of(context).textTheme.bodyText2),
                  addVerticalSpace(MediaQuery.of(context).size.height * 0.02),
                  const AppMaterialButton(text: 'Написать нам')
                ],
              ),
            ),
          ],
        )
    );
  }
}
