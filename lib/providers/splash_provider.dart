import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hrms/routes/app_routes.dart';

class SplashProvider extends ChangeNotifier {
  void navigateToOnboarding(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AppRoutes.onboarding);
    });
  }
}
