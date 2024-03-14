import 'package:flutter/material.dart';
import 'package:slash/config/routes.dart';
import 'package:slash/config/service_locator.dart';
import 'package:slash/config/theme.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      darkTheme: appTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}
