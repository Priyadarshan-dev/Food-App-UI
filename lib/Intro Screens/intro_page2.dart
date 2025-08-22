import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/cooking.png",
                  height: 292,
                  width: 240,
                ),
              ],
            ),
            Center(
              child: Text(
                "All your favourites",
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Get all your loved foods in one once place\n   you just place the order we do the rest",
                style: GoogleFonts.sen(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
