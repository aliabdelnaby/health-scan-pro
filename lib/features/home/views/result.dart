import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_scan_pro/core/functions/navigation.dart';
import 'package:health_scan_pro/core/utils/app_colors.dart';
import 'package:health_scan_pro/core/utils/assets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Results",
          style: TextStyle(
            fontSize: 24.sp,
            fontFamily: "Crimson Text",
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  customPopNavigate(context);
                },
                icon: Icon(
                  Icons.arrow_circle_left_outlined,
                  color: const Color(0xff9000FF),
                  size: 26.sp,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Image.asset(
              Assets.imagesImagesResult,
              height: MediaQuery.of(context).size.height * 0.24,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              "Result :",
              style: TextStyle(
                fontFamily: "Crimson Text",
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Text(
              "Advices :",
              style: TextStyle(
                fontFamily: "Crimson Text",
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text(
              "1. Quit Smoking: If you smoke, quitting is essential. Smoking can exacerbate lung conditions and increase the risk of complications.",
              style: TextStyle(
                fontFamily: "Crimson Text",
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text(
              "2. Healthy Lifestyle: Adopting a healthy lifestyle can support lung health.This includes maintaining a balanced diet rich in fruits, vegetables, and lean proteins, staying hydrated, and engaging in regular exercise as tolerated.",
              style: TextStyle(
                fontFamily: "Crimson Text",
                fontSize: 18.sp,
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          ],
        ),
      ),
    );
  }
}
