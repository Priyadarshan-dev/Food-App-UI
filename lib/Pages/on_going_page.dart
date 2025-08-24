import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnGoingPage extends StatelessWidget {
  const OnGoingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.03,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Food",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.012),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    right: screenWidth * 0.05,
                  ),
                  child: Divider(thickness: 0.5),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.015,
                  ),
                  child: SizedBox(
                    height: screenHeight * 0.175,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "assets/images/pizza2.jpg",
                                height: screenHeight * 0.075,
                                width: screenWidth * 0.15,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth * 0.05,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Pizza Hut",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.35),
                                      Text(
                                        "#162432",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight * 0.012),
                                  Row(
                                    children: [
                                      Text(
                                        "\$35.25",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.075),
                                      Text(
                                        "03 Items",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.037),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: screenHeight * 0.047,
                                width: screenWidth * 0.35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFFF7622),
                                ),
                                child: Center(
                                  child: Text(
                                    "Track Order",
                                    style: GoogleFonts.sen(
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenWidth * 0.032,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: screenWidth * 0.05,
                                ),
                                child: Container(
                                  height: screenHeight * 0.047,
                                  width: screenWidth * 0.35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFFFF7622),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.sen(
                                        fontWeight: FontWeight.w700,
                                        fontSize: screenWidth * 0.032,
                                        color: Color(0xFFFF7622),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.03,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Food",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.012),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    right: screenWidth * 0.05,
                  ),
                  child: Divider(thickness: 0.5),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.018,
                  ),
                  child: SizedBox(
                    height: screenHeight * 0.175,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "assets/images/mcd.jpg",
                                height: screenHeight * 0.075,
                                width: screenWidth * 0.15,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth * 0.05,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Pizza Hut",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.35),
                                      Text(
                                        "#162432",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight * 0.012),
                                  Row(
                                    children: [
                                      Text(
                                        "\$35.25",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.075),
                                      Text(
                                        "03 Items",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.037),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: screenHeight * 0.047,
                                width: screenWidth * 0.35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFFF7622),
                                ),
                                child: Center(
                                  child: Text(
                                    "Track Order",
                                    style: GoogleFonts.sen(
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenWidth * 0.032,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: screenWidth * 0.05,
                                ),
                                child: Container(
                                  height: screenHeight * 0.047,
                                  width: screenWidth * 0.35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFFFF7622),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.sen(
                                        fontWeight: FontWeight.w700,
                                        fontSize: screenWidth * 0.032,
                                        color: Color(0xFFFF7622),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.03,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Food",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.012),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    right: screenWidth * 0.05,
                  ),
                  child: Divider(thickness: 0.5),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.018,
                  ),
                  child: SizedBox(
                    height: screenHeight * 0.25,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "assets/images/starbucks.jpg",
                                height: screenHeight * 0.075,
                                width: screenWidth * 0.15,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth * 0.05,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Pizza Hut",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.35),
                                      Text(
                                        "#162432",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight * 0.012),
                                  Row(
                                    children: [
                                      Text(
                                        "\$35.25",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.075),
                                      Text(
                                        "03 Items",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.037),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: screenHeight * 0.047,
                                width: screenWidth * 0.35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFFF7622),
                                ),
                                child: Center(
                                  child: Text(
                                    "Track Order",
                                    style: GoogleFonts.sen(
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenWidth * 0.032,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: screenWidth * 0.05,
                                ),
                                child: Container(
                                  height: screenHeight * 0.047,
                                  width: screenWidth * 0.35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFFFF7622),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.sen(
                                        fontWeight: FontWeight.w700,
                                        fontSize: screenWidth * 0.032,
                                        color: Color(0xFFFF7622),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
