import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';
import 'package:site/core/values/colors.dart';
import 'package:site/presentation/widgets/CustomContainer.dart';
import 'package:site/presentation/widgets/app_bar_icon.dart';
import 'package:site/presentation/widgets/flexible_space_component.dart';
import 'package:site/presentation/widgets/logoButton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();


}

class _HomePageState extends State<HomePage> {

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
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,

        scrollBehavior: const MaterialScrollBehavior().copyWith(dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},),

        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.45,

            title: LogoButton(onPressed: () => _scrollToTop()),

            actions: [],

            flexibleSpace: const FlexibleSpaceBar(
                  background: FlexibleComponent()),
          ),
          SliverToBoxAdapter(
            child: CustomContainer(),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.redAccent,
              child: FittedBox(child: Text('Lorem')),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.redAccent,
              child: FittedBox(child: Text('Lorem')),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.redAccent,
              child: FittedBox(child: Text('Lorem')),
            ),
          )


        ],
      ),
    );
  }
}
