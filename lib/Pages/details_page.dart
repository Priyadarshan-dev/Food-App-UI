import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.03,
                  left: screenWidth * 0.05,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: screenHeight * 0.055,
                        width: screenWidth * 0.12,
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: Colors.grey.shade200,
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/Icon1.png",
                            height: screenHeight * 0.022,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.04),
                    Text(
                      "Details",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w700,
                        fontSize: screenHeight * 0.02,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                height: screenHeight * 0.22,
                width: screenWidth * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xFFFF7622),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/pizza.png",
                      height: screenHeight * 0.18,
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.08),
                child: Row(
                  children: [
                    Container(
                      height: screenHeight * 0.055,
                      width: screenWidth * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white70,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          "Uttora Cofffe House",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.016,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.08),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Pizza Calzone European",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w700,
                          fontSize: screenHeight * 0.024,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.08),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Prosclutto e funghi is a pizza variety that is topped with tomato sauce",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.016,
                        ),
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.08),
                child: Row(
                  spacing: screenWidth * 0.06,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/images/Star.png",
                          color: Color(0xFFFF7622),
                          height: screenHeight * 0.022,
                        ),
                        SizedBox(width: screenWidth * 0.01),
                        Text(
                          "4.7",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.018,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/images/Car.png",
                          color: Color(0xFFFF7622),
                          height: screenHeight * 0.022,
                        ),
                        SizedBox(width: screenWidth * 0.01),
                        Text(
                          "Free",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.018,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/images/Watch.png",
                          color: Color(0xFFFF7622),
                          height: screenHeight * 0.022,
                        ),
                        SizedBox(width: screenWidth * 0.01),
                        Text(
                          "20min",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.018,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.08),
                child: Row(
                  spacing: screenWidth * 0.06,
                  children: [
                    Text(
                      "SIZE:",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: screenHeight * 0.018,
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.055,
                      width: screenWidth * 0.12,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF7622),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: screenHeight * 0.018),
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.055,
                      width: screenWidth * 0.12,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF7622),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "14",
                          style: TextStyle(fontSize: screenHeight * 0.018),
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.055,
                      width: screenWidth * 0.12,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF7622),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "16",
                          style: TextStyle(fontSize: screenHeight * 0.018),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.08),
                child: Row(
                  children: [
                    Text(
                      "INGRIDENTS",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: screenHeight * 0.018,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.08),
                child: Row(
                  spacing: screenWidth * 0.04,
                  children: [
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.13,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEBE4),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: screenHeight * 0.018),
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.13,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEBE4),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: screenHeight * 0.018),
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.13,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEBE4),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: screenHeight * 0.018),
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.13,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEBE4),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: screenHeight * 0.018),
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.13,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEBE4),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: screenHeight * 0.018),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$32",
                          style: GoogleFonts.sen(
                            fontSize: screenHeight * 0.03,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: screenHeight * 0.03,
                                width: screenWidth * 0.07,
                                decoration: ShapeDecoration(
                                  shape: CircleBorder(),
                                  color: Colors.grey.shade200,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/Minus.png",
                                    height: screenHeight * 0.018,
                                  ),
                                ),
                              ),
                              Text(
                                "2",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.02,
                                ),
                              ),
                              Container(
                                height: screenHeight * 0.03,
                                width: screenWidth * 0.07,
                                decoration: ShapeDecoration(
                                  shape: CircleBorder(),
                                  color: Colors.grey.shade200,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/Plus.png",
                                    height: screenHeight * 0.018,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: screenHeight * 0.065,
                        width: screenWidth * 0.85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFFFF7622),
                        ),
                        child: Center(
                          child: Text(
                            "ADD TO CART",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenHeight * 0.018,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
