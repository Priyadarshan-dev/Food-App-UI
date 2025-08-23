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
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.33,
            width: screenWidth,
            decoration: const BoxDecoration(color: Color(0xFF121223)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.05),
                        child: Image.asset(
                          "assets/images/Icon1.png",
                          color: Colors.white,
                          height: screenHeight * 0.03,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.05),
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
    );
  }
}
