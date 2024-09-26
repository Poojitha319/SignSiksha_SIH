import 'package:flutter/material.dart';
import 'package:signsiksha/screens/home.dart';
import 'package:signsiksha/screens/alpha_num.dart';
import 'package:signsiksha/screens/conversion.dart';
import 'package:signsiksha/screens/maths.dart';
import 'package:signsiksha/screens/onboard.dart';
import 'package:signsiksha/screens/profile.dart';
import 'package:signsiksha/screens/splash.dart';
import 'package:signsiksha/screens/video_upload.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();  
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign Siksha',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), 
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/home': (context) => HomeScreen(),
        '/alphabetsNumbers': (context) => AlphabetsNumbersScreen(),
        '/mathematics': (context) => MathematicsScreen(),
        '/conversionTools': (context) => ConversionToolsScreen(),
        '/profile': (context) => ProfileScreen(),
        '/upload': (context) => UploadVideoScreen()
      },
    );
  }
}