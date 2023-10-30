import 'package:flutter/material.dart';
import 'package:learning_18/presentation/router/app_router.dart';
import 'package:learning_18/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Edspert ID",
      debugShowCheckedModeBanner: false,
      theme: appLightTheme,
      routerConfig: appRouter,
    );
  }
}
