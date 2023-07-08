import 'package:flutter/material.dart';

import 'package:products_app/config/config.dart'
    show Environment, goRouter, AppTheme;

void main() async {
  await Environment.initEnvironment();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: goRouter,
      theme: AppTheme().getTheme(),
    );
  }
}
