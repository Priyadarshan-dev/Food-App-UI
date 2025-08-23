import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterCardComponent {
  void filterYourSearch(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          content: Container(
            width: screenWidth * 0.9,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Filter your search",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                    Image.asset(
                      "assets/images/Cross.png",
                      color: Colors.black,
                      width: screenWidth * 0.06,
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "OFFERS",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.033,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Row(
                  children: [
                    Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white70,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          "Delivery",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.033,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white70,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          "Pickup",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.033,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white70,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          "Offer",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.033,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.01),
                Container(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white70,
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      "Online payment available",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.033,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Text(
                  "DELIVER TIME",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.033,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Row(
                  children: [
                    Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white70,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          "10-15 min",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.033,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white70,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          "20 min",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.033,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white70,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          "30 min",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.033,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.03),
                Text(
                  "PRICING",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.033,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Row(
                  children: [
                    Container(
                      height: screenHeight * 0.05,
                      width: screenHeight * 0.05,
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          "\$",
                          style: TextStyle(fontSize: screenWidth * 0.035),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                      height: screenHeight * 0.05,
                      width: screenHeight * 0.05,
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          "\$\$",
                          style: TextStyle(fontSize: screenWidth * 0.035),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                      height: screenHeight * 0.05,
                      width: screenHeight * 0.05,
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          "\$\$\$",
                          style: TextStyle(fontSize: screenWidth * 0.035),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.03),
                Text(
                  "RATING",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.033,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Row(
                  children: [
                    Container(
                      height: screenHeight * 0.05,
                      width: screenHeight * 0.05,
                      decoration: ShapeDecoration(shape: CircleBorder()),
                      child: Center(
                        child: Image.asset(
                          "assets/images/Star.png",
                          color: Color(0xFFFF7622),
                          width: screenWidth * 0.05,
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                      height: screenHeight * 0.05,
                      width: screenHeight * 0.05,
                      decoration: ShapeDecoration(shape: CircleBorder()),
                      child: Center(
                        child: Image.asset(
                          "assets/images/Star.png",
                          color: Color(0xFFFF7622),
                          width: screenWidth * 0.05,
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                      height: screenHeight * 0.05,
                      width: screenHeight * 0.05,
                      decoration: ShapeDecoration(shape: CircleBorder()),
                      child: Center(
                        child: Image.asset(
                          "assets/images/Star.png",
                          color: Color(0xFFFF7622),
                          width: screenWidth * 0.05,
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                      height: screenHeight * 0.05,
                      width: screenHeight * 0.05,
                      decoration: ShapeDecoration(shape: CircleBorder()),
                      child: Center(
                        child: Image.asset(
                          "assets/images/Star.png",
                          color: Color(0xFFFF7622),
                          width: screenWidth * 0.05,
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                      height: screenHeight * 0.05,
                      width: screenHeight * 0.05,
                      decoration: ShapeDecoration(shape: CircleBorder()),
                      child: Center(
                        child: Image.asset(
                          "assets/images/Star.png",
                          color: Color(0xFFFF7622),
                          width: screenWidth * 0.05,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.03),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: screenHeight * 0.06,
                    width: screenWidth * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFFF7622),
                    ),
                    child: Center(
                      child: Text(
                        "FILTER",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.035,
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
      },
    );
  }
}
