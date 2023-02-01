import 'package:flutter/material.dart';
import 'package:writings/ui/screens/landing_screen.dart';
import 'package:writings/ui/screens/okt_wrapper.dart';
import 'package:writings/ui/screens/onboard_screens/getStartedScreen.dart';
import 'package:writings/ui/screens/onboard_screens/login_signup/number_screen.dart';
import 'package:writings/ui/screens/onboard_screens/login_signup/otp_verificationScreen.dart';

import '../screens/onboard_screens/login_signup/Login_signup_screen.dart';
import '../screens/onboard_screens/splash_screen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/oktWrapper':
        return MaterialPageRoute(builder: (_) => const OktWrapper());
      case '/loginSignup':
        return MaterialPageRoute(builder: (_) => const LoginSignUpScreen());
      case '/numberScreen':
        return MaterialPageRoute(builder: (_) => const NumberScreen());
      case '/otpVerificationScreen':
        return MaterialPageRoute(builder: (_) => const OtpVerificationScreen());
      case '/getStartedScreen':
        return MaterialPageRoute(builder: (_) => const GetStartedScreen());
      case '/landingScreen':
        return MaterialPageRoute(builder: (_) => const LandingScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child:
                        Text('There is no route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
