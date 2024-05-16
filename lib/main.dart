import 'package:flutter/material.dart';
import 'package:health_scan_pro/core/router/app_router.dart';
import 'package:health_scan_pro/core/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
