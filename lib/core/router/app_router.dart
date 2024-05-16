import 'package:go_router/go_router.dart';
import 'package:health_scan_pro/features/home/views/brain.dart';
import 'package:health_scan_pro/features/home/views/covid_19.dart';
import 'package:health_scan_pro/features/home/views/home_view.dart';
import 'package:health_scan_pro/features/home/views/kidney.dart';
import 'package:health_scan_pro/features/home/views/result.dart';
import 'package:health_scan_pro/features/intro/views/intro.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: ((context, state) => const IntroScreen()),
    ),
    GoRoute(
      path: '/home',
      builder: ((context, state) => const HomeScreen()),
    ),
    GoRoute(
      path: '/covid-19',
      builder: ((context, state) => const Covid19Screen()),
    ),
    GoRoute(
      path: '/brain',
      builder: ((context, state) => const BrainScreen()),
    ),
    GoRoute(
      path: '/kidney',
      builder: ((context, state) => const KidneyScreen()),
    ),
    GoRoute(
      path: '/result',
      builder: ((context, state) => const ResultScreen()),
    ),
  ],
);
