import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF121223),
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.30, // header height
            width: screenWidth,
            decoration: const BoxDecoration(color: Color(0xFF121223)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.05,
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
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "Verification",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth * 0.08,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "we have sent a code to your email\nexample@gmail.com",
                  textAlign: TextAlign.center,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.02,
                          left: screenWidth * 0.08,
                        ),
                        child: Text(
                          "CODE",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.016,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.02,
                          right: screenWidth * 0.08,
                        ),
                        child: Text(
                          "Resend in 50 sec",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.016,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  Center(
                    child: SizedBox(
                      width: screenWidth * 0.85,
                      child: PinCodeTextField(
                        appContext: context,
                        length: 4,
                        controller: otpController,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {},
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(8),
                          fieldHeight: screenHeight * 0.07,
                          fieldWidth: screenWidth * 0.18,
                          activeFillColor: Colors.grey.shade200,
                          inactiveFillColor: Colors.grey.shade200,
                          selectedFillColor: Colors.white,
                          activeColor: Colors.grey.shade400,
                          inactiveColor: Colors.grey.shade300,
                        ),
                        enableActiveFill: true,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: screenHeight * 0.07,
                      width: screenWidth * 0.85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFF7622),
                      ),
                      child: Center(
                        child: Text(
                          "VERIFY",
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
