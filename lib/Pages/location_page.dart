import 'package:flutter/material.dart';
import 'package:food_app/Pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image in center
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/location4.png",
                  height: screenHeight * 0.3,
                  width: screenWidth * 0.55,
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.06),

            // Button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Container(
                height: screenHeight * 0.07,
                width: screenWidth * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFFF7622),
                ),
                child: Center(
                  child: Text(
                    "ACCESS LOCATION",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.045,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.04),

            // Disclaimer text (centered)
            Text(
              "DFOOD WILL ACCESS YOUR LOCATION\nONLY WHILE USING THE APP",
              textAlign: TextAlign.center,
              style: GoogleFonts.sen(
                fontWeight: FontWeight.w400,
                fontSize: screenWidth * 0.04,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
