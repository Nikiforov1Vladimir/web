import 'dart:ui';

import 'package:flutter/material.dart';

import 'desktop/widgets/desktop_container.dart';
import 'mobile/widgets/mobile_container.dart';
import '../widgets/flexible_space_component.dart';
import '../widgets/logo_button.dart';

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
      controller: _scrollController,

      scrollBehavior: const MaterialScrollBehavior().copyWith(dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},),

      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: MediaQuery.of(context).size.height * 0.45,

          title: LogoButton(onPressed: () => _scrollToTop()),

          actions: [

          ],

          flexibleSpace: const FlexibleSpaceBar(
              background: FlexibleComponent()),
        ),
        SliverToBoxAdapter(
          child: MobileContainer(),
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
    );
  }
}
