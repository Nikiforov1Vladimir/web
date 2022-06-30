import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:site/core/values/images.dart';
import 'package:site/presentation/mobile/widgets/mobile_flexible.dart';
import 'package:site/presentation/mobile/widgets/mobile_footer.dart';
import 'package:site/presentation/mobile/widgets/mobile_portfolio.dart';
import 'package:site/widgets/custom_app_bar.dart';

import '../../core/values/texts.dart';
import '../desktop/widgets/desktop_container.dart';
import 'widgets/mobile_container.dart';
import '../../widgets/flexible_space_component.dart';
import '../../widgets/logo_button.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  bool goBackToTop = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            goBackToTop = true; // show the back-to-top button
          } else {
            goBackToTop = false; // hide the back-to-top button
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      controller: _scrollController,

      scrollBehavior: const MaterialScrollBehavior().copyWith(dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},),

      slivers: [
        CustomAppBar(
          horizontalSpacing: 0.05,
          expandedHeight: 0.55,
          function: _scrollToTop,
          flexibleSpace: const FlexibleSpaceBar(
              background: FlexibleComponent(
                child: MobileFlexible(),
              )),
        ),
        const SliverToBoxAdapter(
          child: MobileContainer(
              header: firstHeader,
              text: firstText,
              lottie: firstLottie
          ),
        ),
        const SliverToBoxAdapter(
          child: MobileContainer(
              header: secondHeader,
              text: secondText,
              lottie: secondLottie
          ),
        ),
        const SliverToBoxAdapter(
            child: MobilePortfolio()
        ),
        const SliverToBoxAdapter(
          child: MobileFooter()
        )

      ],
    );
  }
}
