import 'package:flutter/material.dart';
import 'package:hrms/views/login_screen.dart';
import 'package:hrms/views/onboardings/onboarding.dart';
import 'package:hrms/views/splashscreen.dart';

class AppRoutes {
  static const String splashscreen = '/splashscreen';
  static const String onboarding = '/onboarding';
  static const String login = '/login';

  static final routes = <String, WidgetBuilder>{
    splashscreen: (context) => const Splashscreen(),
    onboarding: (context) => const Onboarding(),
    login: (context) => const LoginScreen(),
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashscreen:
        return MaterialPageRoute(builder: (_) => const Splashscreen());
      case onboarding:
        return MaterialPageRoute(builder: (_) => const Onboarding());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
