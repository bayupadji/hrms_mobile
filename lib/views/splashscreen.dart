import 'package:flutter/material.dart';
import 'package:hrms/providers/splash_provider.dart';
import 'package:hrms/utils/themes/colors.dart';
import 'package:hrms/utils/widgets/footer.dart';
import 'package:provider/provider.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<SplashProvider>(context, listen: false).navigateToOnboarding(context);

    return Scaffold(
      backgroundColor: AppColors.darkBlue900,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.fitHeight,
                height: 56,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Footer(
                txtcolor: AppColors.white,
                image: 'assets/logodistro.png'
              )
            ),
          ],
        ),
      ),
    );
  }
}
