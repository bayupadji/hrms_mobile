// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:hrms/routes/app_routes.dart';
import 'package:provider/provider.dart';
import 'package:hrms/utils/themes/colors.dart';
import 'package:hrms/utils/widgets/button/default_btn.dart';
import 'package:hrms/utils/widgets/footer.dart';
import 'package:hrms/views/onboardings/content_onboard.dart';
import 'package:hrms/providers/onboarding_provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingProvider = Provider.of<OnboardingProvider>(context);

    final List<Map<String, String>> contentList = [
      {
        'title': 'Keep up with your team\'s attendance',
        'description': 'Easily take attendance of your team, no matter how big or small there are. Take this attendance manually, automatically or set a recurring attendance method.',
        'image': 'assets/Onboarding/keepupteams.png',
      },
      {
        'title': 'Manage schedules effectively',
        'description': 'Create, update, and share schedules with your team seamlessly. Ensure everyone is on the same page with minimal effort.',
        'image': 'assets/Onboarding/organised.png',
      },
      {
        'title': 'Track productivity effortlessly',
        'description': 'Gain insights into your team\'s productivity and attendance trends. Make informed decisions based on real-time data.',
        'image': 'assets/Onboarding/discover.png',
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.darkBlue900,
      body: SafeArea(
        child: Column(
          children: [
            // Logo
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'assets/logo.png',
                height: 24,
              ),
            ),
            // PageView
            Expanded(
              child: PageView.builder(
                controller: onboardingProvider.pageController,
                onPageChanged: (index) => onboardingProvider.setCurrentPage(index),
                itemCount: contentList.length,
                itemBuilder: (context, index) {
                  final content = contentList[index];
                  return ContentOnboard(
                    title: content['title']!,
                    description: content['description']!,
                    image: content['image']!,
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: SmoothPageIndicator(
                controller: onboardingProvider.pageController,
                count: contentList.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: AppColors.white,
                  dotColor: AppColors.darkBlue200,
                  dotHeight: 8,
                  radius: 24,
                  spacing: 8,
                  dotWidth: 8,
                  expansionFactor: 3
                ),
              ),
            ),
            // Footer and Button
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: DefaultBtn(
                      width: double.infinity,
                      text: 'Login',
                      fgcolor: AppColors.darkBlue500,
                      bgcolor: AppColors.lemon500,
                      onPressed: () async {
                        await onboardingProvider.markOnboardingComplete();
                        onboardingProvider.stopAutoScroll();
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.login
                        );
                      },
                    ),
                  ),
                  Footer(
                    txtcolor: AppColors.white,
                    image: 'assets/logodistro.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
