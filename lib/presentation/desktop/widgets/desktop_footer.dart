import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';
import 'package:site/core/values/colors.dart';
import 'package:site/core/values/texts.dart';
import 'package:site/widgets/footer_column.dart';

class DesktopFooter extends StatelessWidget {

  const DesktopFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05,vertical:MediaQuery.of(context).size.height * 0.02),

        height: MediaQuery.of(context).size.height * 0.2,
        color: appViolet,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FooterColumn(
                  centerText: false,
                  header: firstColumnHeader,
                  firstTextButton: firstColumnText
                ),
                FooterColumn(
                  centerText: false,
                  header: secondColumnHeader,
                  firstTextButton: secondColumnText,
                ),
                FooterColumn(
                  centerText: false,
                  header: 'Социальные сети',
                  firstTextButton: 'О нас',
                ),
                FooterColumn(
                  centerText: false,
                  header: 'Контакты',
                  firstTextButton: 'О нас',
                ),
              ],
            ),
            addVerticalSpace(MediaQuery.of(context).size.height * 0.06),
            const Text('@ MakeNGo. Все права защищены'),
          ],
        ),
    );
  }
}
