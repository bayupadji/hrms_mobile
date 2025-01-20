import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/providers/onboarding_provider.dart';
import 'package:hrms/providers/splash_provider.dart';
import 'package:hrms/routes/app_routes.dart';
import 'package:hrms/views/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(create: (_) => OnboardingProvider(totalPages: 3)),
      ],
      child: MaterialApp(
        initialRoute: AppRoutes.splashscreen,
        onGenerateRoute: AppRoutes.generateRoute,
        routes: AppRoutes.routes,
        theme: ThemeData(
          textTheme: GoogleFonts.nunitoSansTextTheme(
            Theme.of(context).textTheme,
          )
        ),
        home: Splashscreen()
      ),
    );
  }
}
