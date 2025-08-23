import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    // screen sizes
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.13),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/cooking.png",
                  height: screenHeight * 0.35,
                  width: screenWidth * 0.65,
                  fit: BoxFit.contain,
                ),
              ],
            ),

            Center(
              child: Text(
                "Order from choosen chef",
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w800,
                  fontSize: screenWidth * 0.060, // was 25
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                "Get all your loved foods in one once place\n   you just place the order we do the rest",
                textAlign: TextAlign.center,
                style: GoogleFonts.sen(fontSize: screenWidth * 0.04),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
