import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_scan_pro/core/functions/navigation.dart';
import 'package:health_scan_pro/core/utils/assets.dart';
import 'package:health_scan_pro/features/home/widgets/custom_btn.dart';

class Covid19Screen extends StatelessWidget {
  const Covid19Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Covid-19 Scanner",
          style: TextStyle(
            fontSize: 24.sp,
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
              icon: Icon(
                Icons.arrow_circle_left_outlined,
                color: const Color(0xff9000FF),
                size: 26.sp,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Image.asset(
            Assets.imagesCovidIcon,
            height: MediaQuery.of(context).size.height * 0.17,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          CustomBtn(
            onPressed: () {
              customNavigate(context, "/result");
            },
            text: "Upload a photo",
            image: Assets.imagesUplaodimage,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          CustomBtn(
            onPressed: () {},
            text: "Scan a photo",
            image: Assets.imagesScanIcon,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),
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
    );
  }
}
