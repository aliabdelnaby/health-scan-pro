import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_scan_pro/core/functions/navigation.dart';
import 'package:health_scan_pro/core/utils/app_colors.dart';
import 'package:health_scan_pro/core/utils/assets.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.16),
            SvgPicture.asset(
              Assets.imagesIntroIcon,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Align(
              child: Text(
                "Discover Your Health",
                style: TextStyle(
                  fontFamily: "Cormorant SC",
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            Align(
              child: Text(
                "Welcome to our application.\n Discover your health with precision and ease \n using our advanced technologies aimed at \n improving your quality of life.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Crimson Text",
                  color: const Color(0xff9586A8),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: MaterialButton(
                onPressed: () {
                  customReplacementNavigate(context, "/home");
                },
                height: MediaQuery.of(context).size.height * 0.07,
                color: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Crimson Text",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
