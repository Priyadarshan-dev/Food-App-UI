import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final double rating;
  final String delivery;
  final String time;
  final String imageAsset;

  const RestaurantCard({
    super.key,
    required this.name,
    required this.rating,
    required this.delivery,
    required this.time,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imageAsset,
            height: screenHeight * 0.18, // instead of 137
            width: screenWidth * 0.87, // ~327px on a 375px wide screen
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: screenHeight * 0.008),

        // Restaurant Name
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.06),
          child: Row(
            children: [
              Text(
                name,
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.055, // instead of 20
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: screenHeight * 0.008),

        // Categories
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.06),
          child: Row(
            children: [
              Text("Burger"),
              SizedBox(width: screenWidth * 0.02),
              Text("Chicken"),
              SizedBox(width: screenWidth * 0.02),
              Text("Rice"),
              SizedBox(width: screenWidth * 0.02),
              Text("Wings"),
            ],
          ),
        ),

        SizedBox(height: screenHeight * 0.015),

        // Info Row
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.06),
          child: Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/Star.png",
                    color: const Color(0xFFFF7622),
                  ),
                  SizedBox(width: screenWidth * 0.025),
                  Text(
                    rating.toString(),
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.045, // instead of 16
                    ),
                  ),
                ],
              ),
              SizedBox(width: screenWidth * 0.08),
              Row(
                children: [
                  Image.asset(
                    "assets/images/Car.png",
                    color: const Color(0xFFFF7622),
                  ),
                  SizedBox(width: screenWidth * 0.025),
                  Text(
                    delivery,
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.045,
                    ),
                  ),
                ],
              ),
              SizedBox(width: screenWidth * 0.08),
              Row(
                children: [
                  Image.asset(
                    "assets/images/Watch.png",
                    color: const Color(0xFFFF7622),
                  ),
                  SizedBox(width: screenWidth * 0.025),
                  Text(
                    time,
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.045,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
