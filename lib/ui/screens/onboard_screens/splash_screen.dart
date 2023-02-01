import 'dart:async';

import 'package:flutter/material.dart';

import '../../../model/helper/service_locater.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/rout_names.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   int timer;
  //   if (getIt<SharedPreferences>().getBool('viewed') == true) {
  //     timer = 0;
  //   } else {
  //     timer = 1000;
  //     getIt<SharedPreferences>().setBool('viewed', true);
  //   }
  //   Timer(
  //       Duration(microseconds: timer),() => Navigator.pushNamedAndRemoveUntil(context, oktWrapper, (route) => false)
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
