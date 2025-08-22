import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnGoingPage extends StatelessWidget {
  const OnGoingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 40),
                  child: Row(
                    children: [
                      Text(
                        "Food",
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
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Divider(thickness: 0.5),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: SizedBox(
                    height: 140,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Pizza Hut",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(width: 140),
                                      Text(
                                        "#162432",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        "\$35.25",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(width: 30),
                                      Text(
                                        "03 Items",
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
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 38,
                                width: 139,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFFF7622),
                                ),
                                child: Center(
                                  child: Text(
                                    "Track Order",
                                    style: GoogleFonts.sen(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  height: 38,
                                  width: 139,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border(
                                      top: BorderSide(color: Color(0xFFFF7622)),
                                      bottom: BorderSide(
                                        color: Color(0xFFFF7622),
                                      ),
                                      right: BorderSide(
                                        color: Color(0xFFFF7622),
                                      ),
                                      left: BorderSide(
                                        color: Color(0xFFFF7622),
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.sen(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
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
                  padding: const EdgeInsets.only(left: 20, top: 40),
                  child: Row(
                    children: [
                      Text(
                        "Food",
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
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Divider(thickness: 0.5),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: SizedBox(
                    height: 140,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Pizza Hut",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(width: 140),
                                      Text(
                                        "#162432",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        "\$35.25",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(width: 30),
                                      Text(
                                        "03 Items",
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
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 38,
                                width: 139,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFFF7622),
                                ),
                                child: Center(
                                  child: Text(
                                    "Track Order",
                                    style: GoogleFonts.sen(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  height: 38,
                                  width: 139,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border(
                                      top: BorderSide(color: Color(0xFFFF7622)),
                                      bottom: BorderSide(
                                        color: Color(0xFFFF7622),
                                      ),
                                      right: BorderSide(
                                        color: Color(0xFFFF7622),
                                      ),
                                      left: BorderSide(
                                        color: Color(0xFFFF7622),
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.sen(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
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
                  padding: const EdgeInsets.only(left: 20, top: 40),
                  child: Row(
                    children: [
                      Text(
                        "Food",
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
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Divider(thickness: 0.5),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: SizedBox(
                    height: 200,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Pizza Hut",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(width: 140),
                                      Text(
                                        "#162432",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        "\$35.25",
                                        style: GoogleFonts.sen(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(width: 30),
                                      Text(
                                        "03 Items",
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
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 38,
                                width: 139,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFFF7622),
                                ),
                                child: Center(
                                  child: Text(
                                    "Track Order",
                                    style: GoogleFonts.sen(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  height: 38,
                                  width: 139,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border(
                                      top: BorderSide(color: Color(0xFFFF7622)),
                                      bottom: BorderSide(
                                        color: Color(0xFFFF7622),
                                      ),
                                      right: BorderSide(
                                        color: Color(0xFFFF7622),
                                      ),
                                      left: BorderSide(
                                        color: Color(0xFFFF7622),
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: GoogleFonts.sen(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
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
