import 'package:flutter/material.dart';
import 'package:hrms/utils/themes/colors.dart';
import 'package:hrms/utils/widgets/button/default_btn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue900,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.darkBlue900,
        foregroundColor: AppColors.white,
        toolbarHeight: 68,
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.contain,
            height: 36,
            width: 87,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              child: Image.asset(
                'assets/icons/question-mark-icons.png',
                height: 24,
                width: 24,
                color: AppColors.white,
              ),
              onTap: () {},
            )
          )
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            return Future.delayed(Duration(seconds: 1));
          },
          color: AppColors.darkBlue500,
          backgroundColor: AppColors.white,
          elevation: 0,
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                HeaderHome(),
                SizedBox(height: 16,),
                MenuHome(),
              ]
            ),
          ),
        ),
      ),
      // bottomNavigationBar: ,
    );
  }
}

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Morning, Bayu Prasetya',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'lets be productive today!',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mon, 09 January 2025',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text(
                    '08:00 - 17:00',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                ]
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mon, 09 January 2025',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '08:00 - 17:00',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                ]
              )
            ],
          ),
          SizedBox(height: 16),
          DefaultBtn(
            image: 'assets/icons/clock.png',
            bgcolor: AppColors.lemon500,
            fgcolor: AppColors.darkBlue500,
            text: 'Clock In',
            onPressed: () {
              // logic here
            }
          )
        ],
      ),
    );
  }
}

class MenuHome extends StatelessWidget {
  const MenuHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32)
        ),
      ),
      child: Column(
        children: [
          
        ],
      ),
    );
  }
}