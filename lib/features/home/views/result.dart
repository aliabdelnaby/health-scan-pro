import 'package:flutter/material.dart';
import 'package:health_scan_pro/core/functions/navigation.dart';
import 'package:health_scan_pro/core/utils/app_colors.dart';
import 'package:health_scan_pro/core/utils/assets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Results",
          style: TextStyle(
            fontSize: 25,
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
                icon: const Icon(
                  Icons.arrow_circle_left_outlined,
                  color: Color(0xff9000FF),
                  size: 26,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Image.asset(
              Assets.imagesImagesResult,
              height: 200,
              width: 300,
            ),
            const SizedBox(height: 25),
            Text(
              "Result :",
              style: TextStyle(
                fontFamily: "Crimson Text",
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 80),
            Text(
              "Advices :",
              style: TextStyle(
                fontFamily: "Crimson Text",
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "1. Quit Smoking: If you smoke, quitting is essential. Smoking can exacerbate lung conditions and increase the risk of complications.",
              style: TextStyle(
                fontFamily: "Crimson Text",
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "2. Healthy Lifestyle: Adopting a healthy lifestyle can support lung health.This includes maintaining a balanced diet rich in fruits, vegetables, and lean proteins, staying hydrated, and engaging in regular exercise as tolerated.",
              style: TextStyle(
                fontFamily: "Crimson Text",
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 70),
            const Text(
              "www.healthscanpro.com",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Cormorant SC",
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff00A3FF),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
