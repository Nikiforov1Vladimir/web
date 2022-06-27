import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';
import 'package:site/core/values/colors.dart';
import 'package:site/widgets/portfolio_component.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DesktopPortfolio extends StatelessWidget {

  final PageController _pageController = PageController();

  DesktopPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.05),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,

      child: Column(
        children: [
          Text('Наши работы',style: Theme.of(context).textTheme.headline2),
          addVerticalSpace(MediaQuery.of(context).size.height * 0.02),

          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.6,
            padding: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.05),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: appViolet,
            ),
            clipBehavior: Clip.hardEdge,
            child: Stack(
              children: [
                PageView(
                  controller: _pageController,
                  children: const [
                    PortfolioComponent(text: 'Первый'),
                    PortfolioComponent(text: 'Второй')
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      IconButton(
                        onPressed: () => _pageController.previousPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut),
                          icon: const Icon(Icons.arrow_back_outlined,color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () => _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut),
                        icon: const Icon(Icons.arrow_forward_outlined,color: Colors.white),
                      ),
                    ]
                  )
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child:SmoothPageIndicator(
                    controller: _pageController,
                    count: 2,
                    effect: CustomizableEffect(
                        activeDotDecoration: DotDecoration(
                          borderRadius: BorderRadius.circular(90),
                          height: 15,
                          width: 15,
                          color: Colors.white
                        ),
                        dotDecoration: DotDecoration(
                            height: 15,
                            width: 15,
                            borderRadius: BorderRadius.circular(90),
                            color: Colors.grey
                        )
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
