import 'package:flutter/material.dart';

class AppColors {
  // Brand Colors
  static const Color darkBlue500 = Color(0xFF2B3499);
  static const Color darkBlue400 = Color(0xFF5962C1);
  static const Color darkBlue300 = Color(0xFF7F89E0);
  static const Color darkBlue200 = Color(0xFFAEB5F4);
  static const Color darkBlue100 = Color(0xFFD5DAF9);
  static const Color darkBlue600 = Color(0xFF1F2683);
  static const Color darkBlue700 = Color(0xFF151B6E);
  static const Color darkBlue800 = Color(0xFF0D1158);
  static const Color darkBlue900 = Color(0xFF080B49);

  static const Color lemon500 = Color(0xFFFFDD59);
  static const Color lemon400 = Color(0xFFFFE882);
  static const Color lemon300 = Color(0xFFFFF29B);
  static const Color lemon200 = Color(0xFFFFF5BC);
  static const Color lemon100 = Color(0xFFFFFBDD);
  static const Color lemon600 = Color(0xFFDBB841);
  static const Color lemon700 = Color(0xFFB7952C);
  static const Color lemon800 = Color(0xFF93731C);
  static const Color lemon900 = Color(0xFF7A5B11);

  // Base Colors
  static const Color backgroundDark = Color(0xFF303030);
  static const Color backgroundLight = Color(0xFFF9FBFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFFCCCCCC);
  static const Color section = Color(0xFFF0F3FF);

  // Text Colors
  static const Color text600 = Color(0xFF131313);
  static const Color text500 = Color(0xFF222222);
  static const Color text400 = Color(0xFF303030);
  static const Color text300 = Color(0xFF6E6E6E);
  static const Color text200 = Color(0xFFACACAC);
  static const Color text100 = Color(0xFFEAEAEA);
  
  // border Colors
  static const Color borderDisable = Color(0xFFF4F4F4);
  static const Color borderDefault = Color(0xFFE6E6E6);
  static const Color borderDark = Color(0xFFDBDBDB);
  static const Color borderHover = Color(0xFFE0E0E0);
  static const Color borderLight = Color(0xFFEFEFEF);

  // System Colors
  static const Color information500 = Color(0xFF2196F3);
  static const Color success500 = Color(0xFF4CAF50);
  static const Color warning500 = Color(0xFFFFC107);
  static const Color error500 = Color(0xFFF44336);

  // Add shades for each system color (optional)
  static const Color success400 = Color(0xFF66BB6A);
  static const Color success300 = Color(0xFF81C784);
  static const Color success200 = Color(0xFFA5D6A7);
  static const Color success100 = Color(0xFFC8E6C9);
}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.darkBlue500,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.text600),
      bodyMedium: TextStyle(color: AppColors.text600),
    ), colorScheme: ColorScheme.light(
      primary: AppColors.darkBlue500,
      secondary: AppColors.lemon500,
      surface: Colors.white,
      error: AppColors.error500,
    ).copyWith(surface: AppColors.backgroundLight),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.darkBlue500,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.white),
      bodyMedium: TextStyle(color: AppColors.darkBlue100),
    ), colorScheme: ColorScheme.dark(
      primary: AppColors.darkBlue500,
      secondary: AppColors.lemon500,
      surface: AppColors.backgroundDark,
      error: AppColors.error500,
    ).copyWith(surface: AppColors.backgroundDark),
  );
}
