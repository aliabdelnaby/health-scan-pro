import 'package:flutter/material.dart';
import 'package:health_scan_pro/core/functions/navigation.dart';
import 'package:health_scan_pro/core/utils/assets.dart';
import 'package:health_scan_pro/features/home/widgets/custom_btn.dart';

class KidneyScreen extends StatelessWidget {
  const KidneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kidney Scanner",
          style: TextStyle(
            fontSize: 25,
            fontFamily: "Crimson Text",
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
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
            Assets.imagesKidney,
            height: 140,
            width: 92,
          ),
          const SizedBox(height: 50),
          CustomBtn(
            onPressed: () {
              customNavigate(context, "/result");
            },
            text: "Upload a photo",
            image: Assets.imagesUplaodimage,
          ),
          const SizedBox(height: 35),
          CustomBtn(
            onPressed: () {},
            text: "Scan a photo",
            image: Assets.imagesScanIcon,
          ),
          const SizedBox(height: 300),
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
        ],
      ),
    );
  }
}
