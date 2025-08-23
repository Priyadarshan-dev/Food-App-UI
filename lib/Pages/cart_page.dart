import 'package:flutter/material.dart';
import 'package:food_app/Components/text_field_component.dart';
import 'package:food_app/Pages/payment_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final _addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: Color(0xFF121223),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.08, top: screenHeight * 0.03),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: screenHeight * 0.055,
                            width: screenHeight * 0.055,
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
                          "Cart",
                          style: GoogleFonts.sen(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.045,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.05, top: screenHeight * 0.03),
                        child: Text(
                          "Done",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.04,
                            color: Color(0xFF059C6A),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                height: screenHeight * 0.14,
                width: screenWidth * 0.9,
                child: Row(
                  children: [
                    Container(
                      height: screenHeight * 0.135,
                      width: screenWidth * 0.34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Image.asset("assets/images/pizza1.png"),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.01, left: screenWidth * 0.02),
                            child: Text(
                              "Pizza Calzone",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.038,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth * 0.02),
                            child: Text(
                              "European",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.038,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.006, left: screenWidth * 0.02),
                            child: Text(
                              "\$64",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w800,
                                fontSize: screenWidth * 0.038,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.006, left: screenWidth * 0.02),
                            child: Text(
                              '14',
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.038,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.01, left: screenWidth * 0.1),
                          child: Container(
                            height: screenHeight * 0.03,
                            width: screenHeight * 0.03,
                            decoration: ShapeDecoration(
                              shape: CircleBorder(),
                              color: Colors.red,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(screenWidth * 0.01),
                              child: Image.asset(
                                "assets/images/Cross.png",
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.07),
                        Row(
                          children: [
                            Container(
                              height: screenHeight * 0.03,
                              width: screenHeight * 0.03,
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
                            SizedBox(width: screenWidth * 0.03),
                            Text("2", style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.038,
                            )),
                            SizedBox(width: screenWidth * 0.03),
                            Padding(
                              padding: EdgeInsets.only(right: screenWidth * 0.02),
                              child: Container(
                                height: screenHeight * 0.03,
                                width: screenHeight * 0.03,
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
                height: screenHeight * 0.14,
                width: screenWidth * 0.9,
                child: Row(
                  children: [
                    Container(
                      height: screenHeight * 0.135,
                      width: screenWidth * 0.34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Image.asset("assets/images/pizza.png"),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.01, left: screenWidth * 0.02),
                            child: Text(
                              "Pizza Calzone",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.038,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth * 0.02),
                            child: Text(
                              "European",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.038,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.012, left: screenWidth * 0.02),
                            child: Text(
                              "\$64",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w800,
                                fontSize: screenWidth * 0.038,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.012, left: screenWidth * 0.02),
                            child: Text(
                              '14',
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.038,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.01, left: screenWidth * 0.1),
                          child: Container(
                            height: screenHeight * 0.03,
                            width: screenHeight * 0.03,
                            decoration: ShapeDecoration(
                              shape: CircleBorder(),
                              color: Colors.red,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(screenWidth * 0.01),
                              child: Image.asset(
                                "assets/images/Cross.png",
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.07),
                        Row(
                          children: [
                            Container(
                              height: screenHeight * 0.03,
                              width: screenHeight * 0.03,
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
                            SizedBox(width: screenWidth * 0.03),
                            Text("2", style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.038,
                            )),
                            SizedBox(width: screenWidth * 0.03),
                            Padding(
                              padding: EdgeInsets.only(right: screenWidth * 0.02),
                              child: Container(
                                height: screenHeight * 0.03,
                                width: screenHeight * 0.03,
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.20),
              Container(
                height: screenHeight * 0.36,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.1,
                        top: screenHeight * 0.02,
                        right: screenWidth * 0.1,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "DELEVERY ADDRESS",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.034,
                            ),
                          ),
                          Text(
                            "EDIT",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.034,
                              color: Color(0xFFFF7622),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    TextFieldComponent(
                      controller: _addressController,
                      hintText: '',
                      obscureText: false,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.1,
                        top: screenHeight * 0.04,
                        right: screenWidth * 0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "TOTAL:",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.038,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.02),
                              Text(
                                "\$96",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenWidth * 0.045,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Breakdown",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.034,
                                  color: Color(0xFFFF7622),
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios, size: screenWidth * 0.04),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PaymentPage()),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.07,
                        width: screenWidth * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFFFF7622),
                        ),
                        child: Center(
                          child: Text(
                            "PLACE ORDER",
                            style: GoogleFonts.sen(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}