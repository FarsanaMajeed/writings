import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:writings/ui/theme/constants.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxHeight = constraints.maxHeight;
      double maxWidth = constraints.maxWidth;
      double h1p = maxHeight * 0.01;
      double h10p = maxHeight * 0.1;
      double w10p = maxWidth * 0.1;
      double w1p = maxWidth * 0.01;
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w1p * 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/ssss 1.png"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: w1p * 6,
                    right: w1p * 6,
                    top: h1p * 2,
                    bottom: h1p * 1.5),
                child: Container(
                  height: h1p * 7,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(11)),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyles.textStyle1,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w1p * 6),
                child: Container(
                  height: h1p * 7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: w1p * .3, color: Colors.black),
                      borderRadius: BorderRadius.circular(11)),
                  child: const Center(
                    child: Text(
                      "Signup",
                      style: TextStyles.textStyle2,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
