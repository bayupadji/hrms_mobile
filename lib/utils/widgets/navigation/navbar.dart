import 'package:flutter/material.dart';
import 'package:hrms/utils/themes/colors.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> navItems = [
    {"icon": "assets/icons/navbar/home.png", "label": "Home"},
    {"icon": "assets/icons/navbar/employee.png", "label": "Employee"},
    {"icon": "assets/icons/navbar/schedule.png", "label": "Schedule"},
    {"icon": "assets/icons/navbar/inbox.png", "label": "Inbox"},
    {"icon": "assets/icons/navbar/profile.png", "label": "Profile"},
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x0C18274B),
            blurRadius: 15.10,
            offset: Offset(0, -7),
            spreadRadius: -2,
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: navItems.map((item) {
          final bool isSelected = navItems.indexOf(item) == selectedIndex;
          return BottomNavigationBarItem(
            icon: Image.asset(
              item["icon"],
              height: 24,
              width: 24,
              color: isSelected ? AppColors.darkBlue500 : AppColors.text200,
            ),
            label: item["label"],
          );
        }).toList(),
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.darkBlue500,
        unselectedItemColor: AppColors.text200,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        onTap: onItemTapped,
      ),
    );
  }
}
