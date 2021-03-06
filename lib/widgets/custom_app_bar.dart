import 'package:flutter/material.dart';
import 'package:site/widgets/icon_button.dart';
import 'package:url_launcher/url_launcher.dart';
import '../core/utils/helper_widgets.dart';
import 'logo_button.dart';

class CustomAppBar extends StatelessWidget {

  final double horizontalSpacing;
  final double expandedHeight;
  final Function function;
  final Widget flexibleSpace;

  CustomAppBar({Key? key, required this.flexibleSpace, required this.function, required this.expandedHeight, required this.horizontalSpacing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(

      titleSpacing: MediaQuery.of(context).size.width * horizontalSpacing,
      expandedHeight: MediaQuery.of(context).size.height * expandedHeight,
      toolbarHeight: MediaQuery.of(context).size.height * 0.06,

      pinned: true,
      title: LogoButton(onPressed: () => function()),

      actions: [
        AppIconButton(
            onPressed: (){},
            icon: 'assets/images/telegram.png'
        ),
        addHorizontalSpace(MediaQuery.of(context).size.width * 0.007),
        AppIconButton(
            onPressed: () async {
              final toEmail = 'halolel14@gmail.com';
              final subject = 'Ваша тема';
              final message = 'Ваше сообщение';

              final url = 'mailto:$toEmail?subject=$subject&body=$message';

              if(await canLaunch(url)){
                await url;
              }

            },
            icon: 'assets/images/email.png'
        ),
        addHorizontalSpace(MediaQuery.of(context).size.width * horizontalSpacing),
      ],

      flexibleSpace: flexibleSpace,
    );
  }
}
