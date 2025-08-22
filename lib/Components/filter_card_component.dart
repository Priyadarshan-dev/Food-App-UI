import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterCardComponent {
  void filterYourSearch(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          content: Column(
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
                      fontSize: 16,
                    ),
                  ),
                  Image.asset("assets/images/Cross.png", color: Colors.black),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "OFFERS",
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white70,
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Delivery",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white70,
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Pickup",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white70,
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Offer",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white70,
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                    left: BorderSide(color: Colors.black),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Online payment available",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "DELIVER TIME",
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white70,
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "10-15 min",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white70,
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "20 min",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white70,
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "30 min",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "PRICING",
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: Colors.orange,
                    ),
                    child: Center(child: Text("\$")),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: Colors.orange,
                    ),
                    child: Center(child: Text("\$\$")),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: Colors.orange,
                    ),
                    child: Center(child: Text("\$\$\$")),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "RATING",
                style: GoogleFonts.sen(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: ShapeDecoration(shape: CircleBorder()),
                    child: Center(
                      child: Image.asset(
                        "assets/images/Star.png",
                        color: Color(0xFFFF7622),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: ShapeDecoration(shape: CircleBorder()),
                    child: Center(
                      child: Image.asset(
                        "assets/images/Star.png",
                        color: Color(0xFFFF7622),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: ShapeDecoration(shape: CircleBorder()),
                    child: Center(
                      child: Image.asset(
                        "assets/images/Star.png",
                        color: Color(0xFFFF7622),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: ShapeDecoration(shape: CircleBorder()),
                    child: Center(
                      child: Image.asset(
                        "assets/images/Star.png",
                        color: Color(0xFFFF7622),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: ShapeDecoration(shape: CircleBorder()),
                    child: Center(
                      child: Image.asset(
                        "assets/images/Star.png",
                        color: Color(0xFFFF7622),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFFF7622),
                  ),
                  child: Center(
                    child: Text(
                      "FILTER",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
