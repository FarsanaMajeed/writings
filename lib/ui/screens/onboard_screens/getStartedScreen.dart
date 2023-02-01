import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/constants.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints)
    {
      double maxHeight = constraints.maxHeight;
      double maxWidth = constraints.maxWidth;
      double h1p = maxHeight * 0.01;
      double h10p = maxHeight * 0.1;
      double w10p = maxWidth * 0.1;
      double w1p = maxWidth * 0.01;
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                padding:  EdgeInsets.only(top: h10p * 3,left: w1p * 3),
                child: const Text(" Create a Unique Blog to\n Publish Your Passion.",style: TextStyles.textStyle7,),
              ),
            Padding(
              padding:  EdgeInsets.only(top: h1p * 4,left: w1p * 4),
              child: Container(
                height: h1p *4,
                width: w10p * 3.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: w1p * 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("GET START",style: TextStyles.textStyle8,),
                      SvgPicture.asset("assets/images/right_arrow_white.svg")
                    ],
                  ),
                ),
              ),
            ),
           Padding(
             padding:  EdgeInsets.only(top: h1p * 14),
             child: SvgPicture.asset("assets/images/getStart.svg"),
           )
          ],
        ),
      );
    });
  }
}
