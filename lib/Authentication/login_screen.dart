import 'package:flutter/material.dart';
import 'package:food_app/Authentication/forgot_password.dart';
import 'package:food_app/Authentication/register_screen.dart';
import 'package:food_app/Components/text_field_component.dart';
import 'package:food_app/Pages/location_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.33,
              width: screenWidth,
              decoration: const BoxDecoration(color: Color(0xFF121223)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.06), // was 50
                  Text(
                    "Log In",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.08, // was 30
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Please sign in to your existing account",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.04, // was 16
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: screenHeight * 0.75,
              width: screenWidth,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                // in case of small screens
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
                              fontSize: screenWidth * 0.035, // was 13
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.01), // was 10
                    TextFieldComponent(
                      controller: _emailController,
                      hintText: 'example@gmail.com',
                      obscureText: false,
                    ),
                    SizedBox(height: screenHeight * 0.015),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenHeight * 0.01,
                            left: screenWidth * 0.06,
                          ),
                          child: Text(
                            "PASSWORD",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.035, // was 13
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    TextFieldComponent(
                      suffixIcon: Icons.visibility_sharp,
                      controller: _passwordController,
                      hintText: '. . . . . . . . . . . ',
                      obscureText: true,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.06),
                          child: const Icon(Icons.check_box),
                        ),
                        SizedBox(width: screenWidth * 0.03), // was 10
                        Text(
                          "Remember me",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.035, // was 13
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.06),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ForgotPassword(),
                                ),
                              );
                            },
                            child: Text(
                              "Forgot Password",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.038, // was 14
                                color: const Color(0xFFFF7622),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.04), // was 30
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LocationPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.07, // was 62
                        width: screenWidth * 0.85, // was 327
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFF7622),
                        ),
                        child: Center(
                          child: Text(
                            "LOG IN",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w700,
                              fontSize: screenWidth * 0.04, // was 14
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04), // was 40
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.04, // was 16
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.03), // was 10
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "SIGN UP",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w700,
                              fontSize: screenWidth * 0.04, // was 16
                              color: const Color(0xFFFF7622),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03), // was 30
                    Text(
                      "Or",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.04, // was 16
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: screenHeight * 0.07, // was 62
                          width: screenHeight * 0.07, // keep it square
                          decoration: const ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.deepPurple,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.08), // was 30
                        Container(
                          height: screenHeight * 0.07,
                          width: screenHeight * 0.07,
                          decoration: const ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.deepPurple,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.08),
                        Container(
                          height: screenHeight * 0.07,
                          width: screenHeight * 0.07,
                          decoration: const ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.05),
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
