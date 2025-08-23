import 'package:flutter/material.dart';
import 'package:food_app/Authentication/login_screen.dart';
import 'package:food_app/Intro%20Screens/intro_page1.dart';
import 'package:food_app/Intro%20Screens/intro_page3.dart';
import 'package:food_app/Intro%20Screens/intro_page4.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    // Get screen sizes once
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            controller: _controller,
            children: const [IntroPage1(), IntroPage3(), IntroPage4()],
          ),
          Container(
            alignment: const Alignment(0, 0.6),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const WormEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    spacing: 8,
                    activeDotColor: Colors.orange,
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: screenHeight * 0.07,
                          width: screenWidth * 0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFFF7622),
                          ),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: GoogleFonts.sen(
                                color: Colors.white,
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                              );
                            },
                            child: Container(
                              height: screenHeight * 0.07,
                              width: screenWidth * 0.85,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFFFF7622),
                              ),
                              child: Center(
                                child: Text(
                                  "Next",
                                  style: GoogleFonts.sen(
                                    color: Colors.white,
                                    fontSize: screenWidth * 0.045,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.03),
                          Center(
                            child: Text(
                              "Skip",
                              style: GoogleFonts.sen(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
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
