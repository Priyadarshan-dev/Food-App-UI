import 'package:flutter/material.dart';
import 'package:food_app/Components/text_field_component.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _retypePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF121223),
      body: SingleChildScrollView(
        child: Column(
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
                    "Sign Up",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.08,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Please sign up to get started",
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
                            top: screenHeight * 0.02,
                            left: screenWidth * 0.08,
                          ),
                          child: Text(
                            "NAME",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenHeight * 0.017,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.012),
                    TextFieldComponent(
                      controller: _nameController,
                      hintText: 'John doe',
                      obscureText: false,
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenHeight * 0.02,
                            left: screenWidth * 0.08,
                          ),
                          child: Text(
                            "EMAIL",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenHeight * 0.017,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.012),
                    TextFieldComponent(
                      controller: _emailController,
                      hintText: 'example@gmail.com',
                      obscureText: true,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenHeight * 0.02,
                            left: screenWidth * 0.08,
                          ),
                          child: Text(
                            "PASSWORD",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenHeight * 0.017,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.012),
                    TextFieldComponent(
                      controller: _passwordController,
                      hintText: '. . . . . . . . . .',
                      obscureText: true,
                      suffixImage: "assets/images/Vector.png",
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenHeight * 0.02,
                            left: screenWidth * 0.08,
                          ),
                          child: Text(
                            "RE-TYPE PASSWORD",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenHeight * 0.017,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.012),
                    TextFieldComponent(
                      controller: _retypePasswordController,
                      hintText: '. . . . . . . . . .',
                      obscureText: true,
                      suffixImage: "assets/images/Vector.png",
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: screenHeight * 0.07, // was 62
                        width: screenWidth * 0.85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFF7622),
                        ),
                        child: Center(
                          child: Text(
                            "SIGN UP",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w700,
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
            ),
          ],
        ),
      ),
    );
  }
}
