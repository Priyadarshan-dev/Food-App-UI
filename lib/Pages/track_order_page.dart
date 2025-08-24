import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackOrderPage extends StatefulWidget {
  const TrackOrderPage({super.key});

  @override
  State<TrackOrderPage> createState() => _TrackOrderPageState();
}

class _TrackOrderPageState extends State<TrackOrderPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.75,
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Row(
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
                      SizedBox(width: screenWidth * 0.025),
                      Text(
                        "Track Order",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.035,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.020),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          screenWidth * 0.025,
                        ),
                        child: Image.asset(
                          "assets/images/location.png",
                          height: screenHeight * 0.65,
                          width: double.infinity,
                          fit: BoxFit.contain, // keeps full image, no cutting
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              height: screenHeight * 0.20,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth * 0.075,
                          top: screenHeight * 0.037,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/nonveg.jpg",
                            height: screenHeight * 0.078,
                            width: screenWidth * 0.16,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: screenWidth * 0.025,
                              top: screenHeight * 0.037,
                            ),
                            child: Text(
                              "Uttora Coffee House",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w700,
                                fontSize: screenWidth * 0.04,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth * 0.025),
                            child: Text(
                              "Ordered At 06 Sept. 10.00pm",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.035,
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.018),
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth * 0.025),
                            child: Text(
                              "2x Burger",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.035,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth * 0.025),
                            child: Text(
                              "4x Sandwich",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.035,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: screenHeight * 0.025),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.05,
                      right: screenWidth * 0.05,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.message, size: screenWidth * 0.045),
                            SizedBox(width: screenWidth * 0.025),
                            Text(
                              "Chat",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.035,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.call, size: screenWidth * 0.045),
                            SizedBox(width: screenWidth * 0.025),
                            Text(
                              "Call",
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
            ),
          ],
        ),
      ),
    );
  }
}
