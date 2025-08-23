import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
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
                      SizedBox(width: screenWidth * 0.05),
                      Text(
                        "Completed",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w700,
                          fontSize: screenWidth * 0.04,
                          color: Color(0xFF059C6A),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
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
                    top: screenHeight * 0.02,
                  ),
                  child: SizedBox(
                    height: screenHeight * 0.18,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                screenWidth * 0.03,
                              ),
                              child: Image.asset(
                                "assets/images/pizza2.jpg",
                                height: screenHeight * 0.07,
                                width: screenWidth * 0.14,
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
                                      SizedBox(width: screenWidth * 0.3),
                                      Text(
                                        "#162432",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenWidth * 0.035,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight * 0.01),
                                  Row(
                                    children: [
                                      Text(
                                        "\$35.25",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.07),
                                      Text(
                                        "29 JAN, 12.30 . 03 Items",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenWidth * 0.035,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: screenHeight * 0.045,
                                width: screenWidth * 0.35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    screenWidth * 0.03,
                                  ),
                                  border: Border.all(color: Color(0xFFFF7622)),
                                ),
                                child: Center(
                                  child: Text(
                                    "Rate",
                                    style: GoogleFonts.sen(
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenWidth * 0.035,
                                      color: Color(0xFFFF7622),
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
                                  height: screenHeight * 0.045,
                                  width: screenWidth * 0.35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      screenWidth * 0.03,
                                    ),
                                    color: Color(0xFFFF7622),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Re-Order",
                                      style: GoogleFonts.sen(
                                        fontWeight: FontWeight.w400,
                                        fontSize: screenWidth * 0.035,
                                        color: Colors.white,
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
                      SizedBox(width: screenWidth * 0.05),
                      Text(
                        "Completed",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w700,
                          fontSize: screenWidth * 0.04,
                          color: Color(0xFF059C6A),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
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
                    top: screenHeight * 0.02,
                  ),
                  child: SizedBox(
                    height: screenHeight * 0.18,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                screenWidth * 0.03,
                              ),
                              child: Image.asset(
                                "assets/images/mcd.jpg",
                                height: screenHeight * 0.07,
                                width: screenWidth * 0.14,
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
                                      SizedBox(width: screenWidth * 0.3),
                                      Text(
                                        "#162432",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenWidth * 0.035,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight * 0.01),
                                  Row(
                                    children: [
                                      Text(
                                        "\$35.25",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.07),
                                      Text(
                                        "29 JAN, 12.30 . 03 Items",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenWidth * 0.035,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: screenHeight * 0.045,
                                width: screenWidth * 0.35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    screenWidth * 0.03,
                                  ),
                                  border: Border.all(color: Color(0xFFFF7622)),
                                ),
                                child: Center(
                                  child: Text(
                                    "Rate",
                                    style: GoogleFonts.sen(
                                      fontWeight: FontWeight.w400,
                                      fontSize: screenWidth * 0.035,
                                      color: Color(0xFFFF7622),
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
                                  height: screenHeight * 0.045,
                                  width: screenWidth * 0.35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      screenWidth * 0.03,
                                    ),
                                    color: Color(0xFFFF7622),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Re-Order",
                                      style: GoogleFonts.sen(
                                        fontWeight: FontWeight.w700,
                                        fontSize: screenWidth * 0.035,
                                        color: Colors.white,
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
                      SizedBox(width: screenWidth * 0.05),
                      Text(
                        "Completed",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w700,
                          fontSize: screenWidth * 0.04,
                          color: Color(0xFF059C6A),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
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
                    top: screenHeight * 0.02,
                  ),
                  child: SizedBox(
                    height: screenHeight * 0.18,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                screenWidth * 0.03,
                              ),
                              child: Image.asset(
                                "assets/images/starbucks.jpg",
                                height: screenHeight * 0.07,
                                width: screenWidth * 0.14,
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
                                      SizedBox(width: screenWidth * 0.3),
                                      Text(
                                        "#162432",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenWidth * 0.035,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight * 0.01),
                                  Row(
                                    children: [
                                      Text(
                                        "\$35.25",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenWidth * 0.04,
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.07),
                                      Text(
                                        "29 JAN, 12.30 . 03 Items",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenWidth * 0.035,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: screenHeight * 0.045,
                                width: screenWidth * 0.35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    screenWidth * 0.03,
                                  ),
                                  border: Border.all(color: Color(0xFFFF7622)),
                                ),
                                child: Center(
                                  child: Text(
                                    "Rate",
                                    style: GoogleFonts.sen(
                                      fontWeight: FontWeight.w400,
                                      fontSize: screenWidth * 0.035,
                                      color: Color(0xFFFF7622),
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
                                  height: screenHeight * 0.045,
                                  width: screenWidth * 0.35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      screenWidth * 0.03,
                                    ),
                                    color: Color(0xFFFF7622),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Re-Order",
                                      style: GoogleFonts.sen(
                                        fontWeight: FontWeight.w400,
                                        fontSize: screenWidth * 0.035,
                                        color: Colors.white,
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
