import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  final List<String> images = [
    'assets/feature1.png', 
    'assets/feature2.png',
    'assets/feature3.png'
  ];
  final List<String> texts = [
    'Learn Alphabets and Numbers in Gujarati',
    'Practice Mathematics and Science',
    'Convert Text and Speech to Sign Language'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(images[index], height: 250),
              SizedBox(height: 20),
              Text(
                texts[index],
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
