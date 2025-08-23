import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: Colors.grey.shade200,
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/images/Icon1.png",
                          height: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Details",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 184,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xFFFF7622),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset("assets/images/pizza.png")],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Container(
                    height: 47,
                    width: 201,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
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
                        "Uttora Cofffe House",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Text(
                    "Pizza Calzone European",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Text(
                    "Prosclutto e funghi is a pizza variety that is\ntopped with tomato sauce",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/Star.png",
                        color: Color(0xFFFF7622),
                      ),
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
                      Text(
                        "Free",
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
                        "assets/images/Watch.png",
                        color: Color(0xFFFF7622),
                      ),
                      Text(
                        "20min",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Text(
                    "SIZE:",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF7622),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Text("10")),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF7622),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Text("14")),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF7622),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Text("16")),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Text(
                    "INGRIDENTS",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFEBE4),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Text("10")),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFEBE4),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Text("10")),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFEBE4),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Text("10")),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFEBE4),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Text("10")),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFEBE4),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Text("10")),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$32",
                          style: GoogleFonts.sen(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: ShapeDecoration(
                                  shape: CircleBorder(),
                                  color: Colors.grey.shade200,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/Minus.png",
                                    height: 18,
                                  ),
                                ),
                              ),
                              Text("2", style: TextStyle(color: Colors.white)),

                              Container(
                                height: 25,
                                width: 25,
                                decoration: ShapeDecoration(
                                  shape: CircleBorder(),
                                  color: Colors.grey.shade200,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/Plus.png",
                                    height: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 62,
                        width: 327,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFFFF7622),
                        ),
                        child: Center(
                          child: Text(
                            "ADD TO CART",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
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
            ),
          ],
        ),
      ),
    );
  }
}

// SizedBox(height: 30),
