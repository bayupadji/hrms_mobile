import 'package:flutter/material.dart';
import 'package:hrms/views/employee/employee_screen.dart';
import 'package:hrms/views/home/home_screen.dart';
import 'package:hrms/views/inbox/inbox_screen.dart';
import 'package:hrms/views/login_screen.dart';
import 'package:hrms/views/onboardings/onboarding.dart';
import 'package:hrms/views/profile/profile_screen.dart';
import 'package:hrms/views/schedule/schedule_screen.dart';
import 'package:hrms/views/splashscreen.dart';

class AppRoutes {
  static const String splashscreen = '/splashscreen';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String home = '/home';
  static const String employee = '/employee';
  static const String inbox = '/inbox';
  static const String profile = '/profile';
  static const String schedule = '/schedule';

  static final routes = <String, WidgetBuilder>{
    splashscreen: (context) => const Splashscreen(),
    onboarding: (context) => const Onboarding(),
    login: (context) => const LoginScreen(),
    home: (context) => const HomeScreen(),
    employee: (context) => const EmployeeScreen(),
    schedule: (context) => const ScheduleScreen(),
    inbox: (context) => const InboxScreen(),
    profile: (context) => const ProfileScreen(),
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashscreen:
        return MaterialPageRoute(builder: (_) => const Splashscreen());
      case onboarding:
        return MaterialPageRoute(builder: (_) => const Onboarding());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case employee:
        return MaterialPageRoute(builder: (_) => const EmployeeScreen());
      case schedule:
        return MaterialPageRoute(builder: (_) => const ScheduleScreen());
      case inbox:
        return MaterialPageRoute(builder: (_) => const InboxScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
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
