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
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color(0xFF121223)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  "Log In",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Please sign in to your existing account",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 40),
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
                  obscureText: false,
                ),
                SizedBox(height: 10),
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
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Icon(Icons.check_box),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Remember me",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(width: 85),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      child: Text(
                        "Forgot Password",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFFFF7622),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LocationPage()),
                    );
                  },
                  child: Container(
                    height: 62,
                    width: 327,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFF7622),
                    ),
                    child: Center(
                      child: Text(
                        "LOG IN",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "SIGN UP",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xFFFF7622),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Or",
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 62,
                      width: 62,
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: Colors.deepPurple,
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      height: 62,
                      width: 62,
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: Colors.deepPurple,
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      height: 62,
                      width: 62,
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
