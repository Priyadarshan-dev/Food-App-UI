import 'package:flutter/material.dart';
import 'package:food_app/Screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 
 /*
   GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.grey.shade200,
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/menu-dots.png",
                              color: Colors.black,
                              height: 18,
                            ),
                          ),
                        ),
                      ),
 */