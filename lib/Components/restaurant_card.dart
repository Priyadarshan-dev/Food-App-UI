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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imageAsset,
            height: 137,
            width: 360,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 5),

        // Restaurant Name
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Text(
                name,
                style: GoogleFonts.sen(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ],
          ),
        ),

        const SizedBox(height: 5),

        // Same categories for all cards
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Text("Burger"),
              SizedBox(width: 8),
              Text("Chicken"),
              SizedBox(width: 8),
              Text("Rice"),
              SizedBox(width: 8),
              Text("Wings"),
            ],
          ),
        ),

        const SizedBox(height: 10),

        // Info Row
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/Star.png",
                    color: Color(0xFFFF7622),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "4.7",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30),
              Row(
                children: [
                  Image.asset(
                    "assets/images/Car.png",
                    color: Color(0xFFFF7622),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Free",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ), // fixed delivery
                ],
              ),
              SizedBox(width: 30),
              Row(
                children: [
                  Image.asset(
                    "assets/images/Watch.png",
                    color: Color(0xFFFF7622),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "20 min",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ), // fixed time
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
