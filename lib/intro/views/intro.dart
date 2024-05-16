import 'package:flutter/material.dart';
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
            const SizedBox(height: 159),
            SvgPicture.asset(
              Assets.imagesIntroIcon,
              width: 178,
              height: 175,
            ),
            const SizedBox(height: 60),
            Align(
              child: Text(
                "Discover Your Health",
                style: TextStyle(
                  fontFamily: "Cormorant SC",
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            const SizedBox(height: 70),
            const Align(
              child: Text(
                "Welcome to our application.\n Discover your health with precision and ease \n using our advanced technologies aimed at \n improving your quality of life.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Crimson Text",
                  color: Color(0xff9586A8),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 78),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: MaterialButton(
                onPressed: () {
                  customReplacementNavigate(context, "/home");
                },
                height: 60,
                color: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "GET STARTED",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Crimson Text",
                    fontSize: 18,
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
