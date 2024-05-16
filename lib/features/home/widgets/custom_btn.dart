import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_scan_pro/core/utils/app_colors.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.image,
    required this.text,
    this.onPressed,
  });
  
  final String image;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: MaterialButton(
        onPressed: onPressed,
        height: MediaQuery.of(context).size.height * 0.068,
        color: AppColors.btnColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              image,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Cormorant SC",
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
