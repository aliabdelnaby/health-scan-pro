import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_scan_pro/core/functions/navigation.dart';
import 'package:health_scan_pro/core/utils/app_colors.dart';
import 'package:health_scan_pro/core/utils/assets.dart';
import 'package:health_scan_pro/features/home/widgets/custom_card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 25.sp,
            fontFamily: "Crimson Text",
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: ListView(
          children: [
            Text(
              "Choose Your Disease ...",
              style: TextStyle(
                fontSize: 18.sp,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            CustomCardItem(
              onTap: () {
                customNavigate(context, "/covid-19");
              },
              image: Assets.imagesCovidIcon,
              text: 'COVID-19',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            CustomCardItem(
              onTap: () {
                customNavigate(context, "/brain");
              },
              image: Assets.imagesBrainIcon,
              text: 'Brain',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            CustomCardItem(
              onTap: () {
                customNavigate(context, "/kidney");
              },
              image: Assets.imagesKidney,
              text: "Kidney",
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Explore more about your health journey by navigating through our website.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Cormorant SC",
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "www.healthscanpro.com",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Cormorant SC",
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff00A3FF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
