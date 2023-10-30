import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning_18/presentation/router/app_routes.dart';
import 'package:learning_18/presentation/screens/form/form_screen.dart';
import 'package:learning_18/presentation/screens/home/home_screen.dart';
import 'package:learning_18/presentation/screens/login/login_screen.dart';
import 'package:learning_18/presentation/screens/splash/splash_screen.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: AppRoutes.init,
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.form,
      pageBuilder: (context, state) => _transitionPageBuilder(
        page: const FormScreen(),
      ),
    ),
    GoRoute(
      path: AppRoutes.home,
      pageBuilder: (context, state) => _transitionPageBuilder(
        page: const HomeScreen(),
      ),
    ),
  ],
);

CustomTransitionPage _transitionPageBuilder({required Widget page}) {
  return CustomTransitionPage(
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
