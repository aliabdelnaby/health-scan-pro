import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_scan_pro/core/router/app_router.dart';
import 'package:health_scan_pro/core/utils/app_colors.dart';

void main() {
  runApp(const HealthCareProApp());
}

class HealthCareProApp extends StatelessWidget {
  const HealthCareProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.scaffoldColor,
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.primaryColor,
            ),
          ),
        );
      },
    );
  }
}
