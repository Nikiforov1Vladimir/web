import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';
import 'package:site/widgets/portfolio_container.dart';

class MobilePortfolio extends StatelessWidget {
  const MobilePortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.05),
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          AutoSizeText('Наши работы',style: Theme.of(context).textTheme.headline2,maxLines: 1),
          addVerticalSpace(MediaQuery.of(context).size.height * 0.03),
          Expanded(
            child: Container(
              child: ListView(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02,right: MediaQuery.of(context).size.width * 0.04),
                physics: BouncingScrollPhysics(),
                itemExtent: MediaQuery.of(context).size.width * 0.6,
                scrollDirection: Axis.horizontal,
                children: [
                  PortfolioContainer(appName: 'Приложение для', image: 'assets/images/test_image_3.png'),
                  PortfolioContainer(appName: 'Приложение для', image: 'assets/images/test_image_4.png'),
                  PortfolioContainer(appName: 'Приложение для', image: 'assets/images/test_image_3.png'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
