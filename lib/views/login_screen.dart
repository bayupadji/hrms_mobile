import 'package:flutter/material.dart';
import 'package:hrms/utils/themes/colors.dart';
import 'package:hrms/utils/widgets/button/default_btn.dart';
import 'package:hrms/utils/widgets/footer.dart';
import 'package:hrms/utils/widgets/textfields/default_textfields.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      decoration: BoxDecoration(
                        color: AppColors.darkBlue900,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/logo.png',
                          height: 56,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Login',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.text600,
                      )
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        DefaultTextfields(
                          labelText: 'Enter your email',
                          icon: 'assets/icons/email.png'
                        ),
                        const SizedBox(height: 16),
                        DefaultTextfields(
                          obscureText: true,
                          labelText: 'Enter your password',
                          icon: 'assets/icons/lock.png'
                        ),
                        const SizedBox(height: 16,),
                        SizedBox(
                          width: double.infinity,
                          child: GestureDetector(
                            child: Text(
                              'Forgot Password?',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.darkBlue500,
                                fontWeight: FontWeight.w600,
                              )
                            ),
                            onTap: () {},
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        DefaultBtn(
                          text: 'Login',
                          bgcolor: AppColors.darkBlue500,
                          fgcolor: AppColors.white,
                          onPressed: () {}
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Footer(
              txtcolor: AppColors.text600,
              image: 'assets/logodistrofullcolor.png'
            )
          ]
        ),
      )
    );
  }
}