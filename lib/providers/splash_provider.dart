import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hrms/routes/app_routes.dart';

class SplashProvider extends ChangeNotifier {
  Future<void> navigateBasedOnOnboardingStatus(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final isOnboardingComplete = prefs.getBool('isOnboardingComplete') ?? false;

    Timer(const Duration(seconds: 3), () {
      if (isOnboardingComplete) {
        Navigator.pushReplacementNamed(context, AppRoutes.login);
      } else {
        Navigator.pushReplacementNamed(context, AppRoutes.onboarding);
      }
    });
  }
}
