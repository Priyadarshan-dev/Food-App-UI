import 'package:flutter/material.dart';
import 'package:food_app/Pages/track_order_page.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderConfirmatioPage extends StatelessWidget {
  const OrderConfirmatioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/surprise.png", height: 207, width: 228),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Congratulations!",
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "You succesfully maked a payment",
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            Center(
              child: Text(
                "enjoy our service!",
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrackOrderPage()),
                );
              },
              child: Container(
                height: 62,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFFF7622),
                ),
                child: Center(
                  child: Text(
                    "TRACK ORDER",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
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
