import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:learning_18/presentation/router/app_router.dart';
import 'package:learning_18/presentation/router/app_routes.dart';
import 'package:learning_18/shared/widget/buttons/app_thirdpart_signin_button.dart';
import 'package:learning_18/theme/app_style.dart';
import 'package:learning_18/utils/app_constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: appBackgroundColor,
        elevation: 0,
      ),
      body: Padding(
        padding: appPadding,
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(imageWelcomeLogin, height: 250),
                    const SizedBox(height: 32),
                    Text(
                      textWelcome,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      textWelcomeCaption,
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              AppThirdpartSigninButton(
                width: 200,
                image: iconGoogle,
                label: textButtonSignInGoogle,
                onTap: () {
                  log("Sign with Google");
                  appRouter.replace(AppRoutes.home);
                },
              ),
              const SizedBox(height: 8),
              AppThirdpartSigninButton(
                width: 200,
                image: iconApple,
                backgroundColor: Colors.black,
                labelColor: Colors.white,
                label: textButtonSignInAppleId,
                onTap: () {
                  log("Sign with Apple ID");
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
