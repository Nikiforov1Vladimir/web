import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';
import 'package:site/core/values/colors.dart';
import 'package:site/presentation/desktop/widgets/footer_column.dart';

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
              children: [
                FooterColumn(
                  header: 'MakeNGo',
                  firstTextButton: 'Make it unique',
                ),
                FooterColumn(
                  header: 'Компания',
                  firstTextButton: 'О нас',
                  firstTextButtonPressed: () => print('Дэме'),
                ),
                FooterColumn(
                  header: 'Социальные сети',
                  firstTextButton: 'О нас',
                  firstTextButtonPressed: () => print('Дэме'),
                ),
                FooterColumn(
                  header: 'Контакты',
                  firstTextButton: 'О нас',
                  firstTextButtonPressed: () => print('Дэме'),
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
