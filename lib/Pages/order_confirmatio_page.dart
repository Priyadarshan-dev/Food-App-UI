import 'package:flutter/material.dart';
import 'package:food_app/Pages/track_order_page.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderConfirmatioPage extends StatelessWidget {
  const OrderConfirmatioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/surprise.png",
              height: screenHeight * 0.26,
              width: screenWidth * 0.58,
            ),
            SizedBox(height: screenHeight * 0.012),
            Center(
              child: Text(
                "Congratulations!",
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth * 0.06,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.025),
            Center(
              child: Text(
                "You succesfully maked a payment",
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.035,
                ),
              ),
            ),
            Center(
              child: Text(
                "enjoy our service!",
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.035,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.037),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrackOrderPage()),
                );
              },
              child: Container(
                height: screenHeight * 0.07,
                width: screenWidth * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFFF7622),
                ),
                child: Center(
                  child: Text(
                    "TRACK ORDER",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.04,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
