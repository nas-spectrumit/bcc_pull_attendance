import 'package:flutter/material.dart';
import 'core/app_theme.dart';
import 'screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BccPullApp());
}

class BccPullApp extends StatelessWidget {
  const BccPullApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BCC PULL DATA',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
