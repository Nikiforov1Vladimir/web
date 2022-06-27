import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';
import 'package:site/core/values/texts.dart';
import 'package:site/presentation/desktop/widgets/desktop_footer.dart';
import 'package:site/presentation/desktop/widgets/desktop_portfolio.dart';
import '../../widgets/flexible_space_component.dart';
import '../../widgets/logo_button.dart';
import 'widgets/desktop_container.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {

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
        SliverAppBar(
          titleSpacing: MediaQuery.of(context).size.width * 0.146,
          pinned: true,
          expandedHeight: MediaQuery.of(context).size.height * 0.45,
          title: LogoButton(onPressed: () => _scrollToTop()),
          actions: [
            IconButton(onPressed: (){},splashRadius: 20, icon: const Image(image: AssetImage('assets/images/telegram.png'),color: Colors.white)),
            addHorizontalSpace(10),
            IconButton(onPressed: (){},splashRadius: 20,icon: const Image(image: AssetImage('assets/images/email.png'),color: Colors.white)),
            addHorizontalSpace(MediaQuery.of(context).size.width * 0.146),
          ],
          flexibleSpace: const FlexibleSpaceBar(
              background: FlexibleComponent()),
        ),
        const SliverToBoxAdapter(
          child: DesktopContainer(
              direction: 'left',
              lottie: 'assets/lotties/coding.json',
              header: 'Efficient coding',
              text: firstText
          ),
        ),
        const SliverToBoxAdapter(
          child: DesktopContainer(
              direction: 'right',
              lottie: 'assets/lotties/planing.json',
              header: 'Detailed planning',
              text: secondText,
          ),
        ),
        SliverToBoxAdapter(
          child: DesktopPortfolio(),
        ),
        const SliverToBoxAdapter(
          child: DesktopFooter(),
        ),
      ],
    );
  }
}
