import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';
import 'package:site/widgets/portfolio_container.dart';

class DesktopPortfolio extends StatelessWidget {

  final PageController _pageController = PageController();

  DesktopPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.05),
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,

      child: Column(
        children: [
          Text('Наши работы',style: Theme.of(context).textTheme.headline2),
          addVerticalSpace(MediaQuery.of(context).size.height * 0.02),

          Expanded(
            child: Center(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02,right: MediaQuery.of(context).size.width * 0.02),
                scrollDirection: Axis.horizontal,

                children: const [
                  PortfolioContainer(appName: 'Приложение для ...',image: 'assets/images/test_image_3.png',),
                  PortfolioContainer(appName: 'Приложения для ...',image: 'assets/images/test_image_4.png'),
                  PortfolioContainer(appName: 'Приложения для ...',image: 'assets/images/test_image_3.png'),
                  PortfolioContainer(appName: 'Приложения для ...',image: 'assets/images/test_image_4.png',),
                  PortfolioContainer(appName: 'Приложения для ...',image: 'assets/images/test_image_3.png')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
