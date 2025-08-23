import 'package:flutter/material.dart';
import 'package:food_app/Pages/add_card_page.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isMasterSelected = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05,
                top: screenHeight * 0.03,
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
                          color: Colors.black,
                          height: screenHeight * 0.022,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.025),
                  Text(
                    "Payment",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: Row(
                  children: [
                    Container(
                      height: screenHeight * 0.09,
                      width: screenWidth * 0.22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade200,
                      ),
                      child: Center(
                        child: Image.asset("assets/images/Cash.png"),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.05),
                      child: Container(
                        height: screenHeight * 0.09,
                        width: screenWidth * 0.22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade200,
                        ),
                        child: Center(
                          child: Image.asset("assets/images/visa.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.05),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMasterSelected = true;
                          });
                        },
                        child: Container(
                          height: screenHeight * 0.09,
                          width: screenWidth * 0.22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade200,
                          ),
                          child: Center(
                            child: Image.asset("assets/images/mastercard.png"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.05,
                        right: screenWidth * 0.05,
                      ),
                      child: Container(
                        height: screenHeight * 0.09,
                        width: screenWidth * 0.22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade200,
                        ),
                        child: Center(
                          child: Image.asset("assets/images/paypal.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            isMasterSelected
                ? Container(
                    height: screenHeight * 0.1,
                    width: screenWidth * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade200,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: screenWidth * 0.05,
                            top: screenHeight * 0.025,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "MasterCard Selected",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenWidth * 0.035,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: screenWidth * 0.05,
                            right: screenWidth * 0.05,
                          ),
                          child: Row(
                            children: [
                              Image.asset("assets/images/Mastercard1.png"),
                              SizedBox(width: screenWidth * 0.01),
                              Text("***************436"),
                              SizedBox(width: screenWidth * 0.25),
                              Image.asset(
                                "assets/images/Polygon 1.png",
                                height: screenHeight * 0.018,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    height: screenHeight * 0.32,
                    width: screenWidth * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade200,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Clipped.png"),
                        SizedBox(height: screenHeight * 0.012),
                        Text(
                          "No master card added",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.012),
                        Text(
                          "You can add a mastercard and\n        save it for later",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                      ],
                    ),
                  ),
            SizedBox(height: screenHeight * 0.03),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddCardPage()),
                );
              },
              child: Container(
                height: screenHeight * 0.07, // was 62
                width: screenWidth * 0.85, // was 327
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Plus.png",
                      color: Color(0xFFFF7622),
                    ),
                    SizedBox(width: screenWidth * 0.025),
                    Text(
                      "ADD NEW",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.035,
                        color: Color(0xFFFF7622),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.13),
              child: Row(
                children: [
                  Text(
                    "TOTAL:",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.035,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.025),
                  Text(
                    "\$96",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.075,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: screenHeight * 0.07, // was 62
                width: screenWidth * 0.85, // was 327
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFFF7622),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PAY & CONFIRM",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.035,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
          ],
        ),
      ),
    );
  }
}
