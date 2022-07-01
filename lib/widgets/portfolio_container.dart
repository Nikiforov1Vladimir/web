import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:site/core/values/colors.dart';

class PortfolioContainer extends StatelessWidget {

  final String appName;
  final String image;

  const PortfolioContainer({Key? key, required this.appName, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
      child: InkWell(
        onTap: (){},
        mouseCursor: SystemMouseCursors.click,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.01,vertical: MediaQuery.of(context).size.height * 0.01),
          width: MediaQuery.of(context).size.width * 0.2,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              // SizedBox(
              //     child: Image(image: AssetImage(image),width: MediaQuery.of(context).size.width * 0.3,height: MediaQuery.of(context).size.height * 0.2,fit: BoxFit.cover,
              //     )
              // ),
              AutoSizeText(
                  appName,
                  maxLines: 1,

                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(-2,0),
                        blurRadius: 2
                      )
                    ]
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
