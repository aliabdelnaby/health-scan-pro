import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({
    super.key,
    required this.image,
    this.onTap,
    required this.text,
  });
  final String image;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.125,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffECF0FF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Text(
              text,
              style: TextStyle(
                fontFamily: "Crimson Text",
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff2D0C80).withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
