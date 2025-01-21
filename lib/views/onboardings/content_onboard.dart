import 'package:flutter/material.dart';
import 'package:hrms/utils/themes/colors.dart';

class ContentOnboard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const ContentOnboard({super.key, required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Image.asset(
              image,
              height: 318,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          height: 205,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.darkBlue100,
                ),
              ),
            ],
          ),
        )
      ]
    );
  }
}
