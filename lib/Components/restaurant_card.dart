import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final double rating;
  final String delivery;
  final String time;
  //final String imageAsset;

  const RestaurantCard({
    super.key,
    required this.name,
    required this.rating,
    required this.delivery,
    required this.time,
    // required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Restaurant Image
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(10),
          //   child: Image.asset(
          //     imageAsset,
          //     height: 100,
          //     width: 365,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 137,
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFF7622),
              ),
            ),
          ),
          const SizedBox(height: 5),

          // Restaurant Name
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              name,
              style: GoogleFonts.sen(fontWeight: FontWeight.w400, fontSize: 20),
            ),
          ),

          const SizedBox(height: 5),

          // Same categories for all cards
          const Padding(
            padding: EdgeInsets.only(left: 20),
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
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/Star.png",
                      color: Color(0xFFFF7622),
                    ),
                    SizedBox(width: 4),
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
                    SizedBox(width: 4),
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
                    SizedBox(width: 4),
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
      ),
    );
  }
}
