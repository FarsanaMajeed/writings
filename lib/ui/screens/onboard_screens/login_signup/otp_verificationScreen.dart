import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../theme/constants.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  final FocusNode pinputFocusNode = FocusNode();
  final pinController = TextEditingController();

  List<TextStyle> otpTextStyles = [
    TextStyles.textStyleOtp,
    TextStyles.textStyleOtp,
    TextStyles.textStyleOtp,
    TextStyles.textStyleOtp,
    TextStyles.textStyleOtp,
    TextStyles.textStyleOtp,
  ];

  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxHeight = constraints.maxHeight;
      double maxWidth = constraints.maxWidth;
      double h1p = maxHeight * 0.01;
      double h10p = maxHeight * 0.1;
      double w10p = maxWidth * 0.1;
      double w1p = maxWidth * 0.01;
      return Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: h10p * 2.8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Varification Code",
                    style: TextStyles.textStyle5,
                  ),
                  SizedBox(
                    height: h1p * 1,
                  ),
                  const Text(
                    "We Have Sent The Code Varification To",
                    style: TextStyles.textStyle6,
                  ),
                  SizedBox(
                    height: h1p * .5,
                  ),
                  const Text(
                    "Your Mobile Number",
                    style: TextStyles.textStyle6,
                  ),
                  SizedBox(
                    height: h1p * 2,
                  ),
                  const Text(
                    "+91 7592889248",
                    style: TextStyles.textStyle2,
                  ),
                  SizedBox(height: h1p * 8),
                  Padding(
                    padding: EdgeInsets.only(left: w1p * 6, right: w1p * 2),
                    child: OtpTextField(
                      numberOfFields: 6,
                      borderColor: Colors.grey,
                      focusedBorderColor: Colors.grey,
                      margin: EdgeInsets.only(right: w1p * 4),
                      styles: otpTextStyles,
                      showFieldAsBox: false,
                      borderWidth: w1p * .5,
                      enabledBorderColor: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
