import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingProvider extends ChangeNotifier {
  final PageController pageController = PageController();
  late Timer timer;
  int currentPage = 0;
  final int totalPages;

  OnboardingProvider({required this.totalPages}) {
    startAutoScroll();
  }

  void startAutoScroll() {
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      currentPage = (currentPage + 1) % totalPages; // Looping halaman
      pageController.animateToPage(
        currentPage,
        duration: const Duration(seconds: 3),
        curve: Curves.easeInOut,
      );
    });
  }

  void stopAutoScroll() {
    if (timer.isActive) {
      timer.cancel();
    }
  }

  Future<void> markOnboardingComplete() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isOnboardingComplete', true);
  }

  void setCurrentPage(int index) {
    currentPage = index;
    notifyListeners();
  }

  @override
  void dispose() {
    timer.cancel();
    pageController.dispose();
    super.dispose();
  }
}
