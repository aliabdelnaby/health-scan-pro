import 'package:flutter/material.dart';
import 'package:health_scan_pro/core/utils/app_colors.dart';
import 'package:health_scan_pro/core/utils/assets.dart';
import 'package:health_scan_pro/home/widgets/custom_card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 25,
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
                fontSize: 18,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 35),
            CustomCardItem(
              onTap: () {},
              image: Assets.imagesCovidIcon,
              text: 'COVID-19',
            ),
            const SizedBox(height: 35),
            CustomCardItem(
              onTap: () {},
              image: Assets.imagesBrainIcon,
              text: 'Brain',
            ),
            const SizedBox(height: 35),
            CustomCardItem(
              onTap: () {},
              image: Assets.imagesKidney,
              text: "Kindey",
            ),
            const SizedBox(height: 35),
            Text(
              "Explore more about your health journey by navigating through our website.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Cormorant SC",
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
