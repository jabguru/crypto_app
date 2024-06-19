import 'package:crypto_app/constants/colors.dart';
import 'package:crypto_app/constants/global_variables.dart';
import 'package:crypto_app/gen/fonts.gen.dart';
import 'package:crypto_app/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: kScaffoldColor,
        fontFamily: FontFamily.nunitoSans,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: FontFamily.clashGrotesk,
            fontWeight: FontWeight.w600,
            color: kWhiteColor,
            fontSize: 34.0,
          ),
          bodyLarge: TextStyle(
            fontWeight: FontWeight.w600,
            color: kStormGrey,
            fontSize: 22.0,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w700,
            color: kLightGrey,
            fontSize: 17.0,
          ),
        ),
      ),
      home: const OnboardingScreen(),
      navigatorKey: GlobalVariables.navigatorKey,
    );
  }
}
