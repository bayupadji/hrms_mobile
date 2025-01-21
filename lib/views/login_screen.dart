import 'package:flutter/material.dart';
import 'package:hrms/routes/app_routes.dart';
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
                  _buildLogo(),
                  const SizedBox(height: 24),
                  _buildWelcomeText(),
                  const SizedBox(height: 16),
                  _buildForm(context),
                ],
              ),
            ),
            Footer(
              txtcolor: AppColors.text600,
              image: 'assets/logodistrofullcolor.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Image.asset(
            'assets/logofullcolor.png',
            height: 48,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Welcome Back!',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.text600,
            ),
          ),
          SizedBox(height: 8,),
          Text(
            'Log in to access your account and continue your journey with us.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.text300,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          DefaultTextfields(
            labelText: 'Enter your email',
            icon: 'assets/icons/email.png',
          ),
          const SizedBox(height: 16),
          DefaultTextfields(
            obscureText: true,
            labelText: 'Enter your password',
            icon: 'assets/icons/lock.png',
          ),
          const SizedBox(height: 16),
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
                ),
              ),
              onTap: () {
                // Handle forgot password action
              },
            ),
          ),
          const SizedBox(height: 16),
          DefaultBtn(
            text: 'Login',
            bgcolor: AppColors.darkBlue500,
            fgcolor: AppColors.white,
            onPressed: () {
              // Handle login action
              Navigator.pushReplacementNamed(
                context,
                AppRoutes.home,
              );
            },
          ),
        ],
      ),
    );
  }
}
