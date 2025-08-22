import 'package:flutter/material.dart';
import 'package:food_app/Pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/location.jpg",
                  height: 250,
                  width: 206,
                ),
              ],
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Container(
                height: 62,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFF7622),
                ),
                child: Center(
                  child: Text(
                    "ACCESS LOCATION",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "DFOOD WILL ACCESS YOUR LOCATION\n        ONLY WHILE USING THE APP",
              style: GoogleFonts.sen(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
