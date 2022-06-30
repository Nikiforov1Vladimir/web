import 'package:flutter/material.dart';
import 'package:site/core/utils/helper_widgets.dart';
import 'package:site/core/values/colors.dart';
import 'package:site/core/values/texts.dart';
import 'package:site/widgets/footer_column.dart';

class MobileFooter extends StatelessWidget {


  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.03,horizontal:MediaQuery.of(context).size.width * 0.05),
      color: appViolet,

      child: Column(
        children: [
          const FooterColumn(
              centerText: true,
              header: firstColumnHeader,
              firstTextButton: firstColumnText
          ),
          addVerticalSpace(MediaQuery.of(context).size.height * 0.04),
          const FooterColumn(
              centerText: true,
              header: secondColumnHeader,
              firstTextButton: secondColumnText,
          ),
          addVerticalSpace(MediaQuery.of(context).size.height * 0.04),
          const FooterColumn(
              centerText: true,
              header: 'MakeNGo',
              firstTextButton: 'Make it unique like nobody'
          ),
          addVerticalSpace(MediaQuery.of(context).size.height * 0.04),
          const FooterColumn(
              centerText: true,
              header: 'MakeNGo',
              firstTextButton: 'Make it unique like nobody'
          ),
          addVerticalSpace(MediaQuery.of(context).size.height * 0.04),
          const Text('@ MakeNGo. Все права защищены'),
        ]
      ),
    );
  }
}
