import 'package:flutter/material.dart';
import 'package:food_app/Authentication/verification_screen.dart';
import 'package:food_app/Components/text_field_component.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF121223),
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.30,
            width: screenWidth,
            decoration: const BoxDecoration(color: Color(0xFF121223)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.05),
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
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Text(
                  "Forgot Password",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth * 0.08,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Please sign in to your existing account",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.04,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight * 0.70,
            width: screenWidth,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              color: Color(0xFFFFFFFF),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.02, // was 20
                          left: screenWidth * 0.06,
                        ),
                        child: Text(
                          "EMAIL",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.016,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  TextFieldComponent(
                    controller: _controller,
                    hintText: 'example@gmail.com',
                    obscureText: false,
                  ),
                  SizedBox(height: screenHeight * 0.040),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VerificationScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: screenHeight * 0.07, // was 62
                      width: screenWidth * 0.85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFF7622),
                      ),
                      child: Center(
                        child: Text(
                          "SEND CODE",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.04,
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
    );
  }
}
