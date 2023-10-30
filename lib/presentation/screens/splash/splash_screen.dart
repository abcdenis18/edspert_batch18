import 'package:flutter/material.dart';
import 'package:learning_18/presentation/router/app_router.dart';
import 'package:learning_18/presentation/router/app_routes.dart';
import 'package:learning_18/theme/app_style.dart';
import 'package:learning_18/utils/app_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () => appRouter.replace(AppRoutes.login),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: Center(
        child: Image.asset(
          imageEdspertIdLogo,
          height: 25,
        ),
      ),
    );
  }
}
