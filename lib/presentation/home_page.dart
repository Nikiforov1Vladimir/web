import 'package:flutter/material.dart';
import 'package:site/presentation/desktop/desktop_body.dart';
import 'package:site/presentation/mobile_body.dart';
import 'package:site/core/responsive/screen_size.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ResponsiveLayOut(
            mobileBody: MobileBody(),
            desktopBody:DesktopBody()
        ),
      ),
    );
  }
}
