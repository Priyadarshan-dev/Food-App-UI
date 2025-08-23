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
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.33, // instead of /3.4
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
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.06),
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
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.02,
                  left: screenWidth * 0.05,
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
            hintText: '',
            obscureText: false,
          ),

          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.02,
                  left: screenWidth * 0.05,
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
            hintText: '',
            obscureText: true,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.02,
                  left: screenWidth * 0.05,
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
            suffixIcon: Icons.visibility_sharp,
            controller: _passwordController,
            hintText: '',
            obscureText: true,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.02,
                  left: screenWidth * 0.05,
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
            suffixIcon: Icons.visibility_sharp,
            controller: _retypePasswordController,
            hintText: '',
            obscureText: true,
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
    );
  }
}
