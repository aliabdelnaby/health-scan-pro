import 'package:go_router/go_router.dart';
import 'package:health_scan_pro/home/views/home_view.dart';
import 'package:health_scan_pro/intro/views/intro.dart';

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
  ],
);
