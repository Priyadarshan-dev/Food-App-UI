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
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3.4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color(0xFF121223)),
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
                        padding: const EdgeInsets.only(left: 20),
                        child: Image.asset(
                          "assets/images/Icon1.png",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Text(
                  "Sign Up",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Please sign up to get started",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 40),
                child: Text(
                  "NAME",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          TextFieldComponent(
            controller: _nameController,
            hintText: 'john Doe',
            obscureText: false,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 40),
                child: Text(
                  "EMAIL",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          TextFieldComponent(
            controller: _emailController,
            hintText: 'example@gmail.com',
            obscureText: true,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 40),
                child: Text(
                  "PASSWORD",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          TextFieldComponent(
            suffixIcon: Icons.visibility_sharp,
            controller: _passwordController,
            hintText: '. . . . . . . . . . . ',
            obscureText: true,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 40),
                child: Text(
                  "RE-TYPE PASSWORD",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          TextFieldComponent(
            suffixIcon: Icons.visibility_sharp,
            controller: _retypePasswordController,
            hintText: '. . . . . . . . . . . ',
            obscureText: true,
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 62,
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFF7622),
              ),
              child: Center(
                child: Text(
                  "SIGN UP",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
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
