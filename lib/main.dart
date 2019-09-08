import 'package:flutter/material.dart';
import 'package:nutrino/features/onboarding/presentation/pages/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutrino',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
