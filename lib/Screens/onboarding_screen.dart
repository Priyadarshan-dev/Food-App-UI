import 'package:flutter/material.dart';
import 'package:food_app/Authentication/login_screen.dart';
import 'package:food_app/Intro%20Screens/intro_page1.dart';
import 'package:food_app/Intro%20Screens/intro_page3.dart';
import 'package:food_app/Intro%20Screens/intro_page4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) => {
              setState(() {
                onLastPage = (index == 2);
              }),
            },
            controller: _controller,
            children: [IntroPage1(), IntroPage3(), IntroPage4()],
          ),
          Container(
            alignment: Alignment(0, 0.6),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    spacing: 8,
                    activeDotColor: Colors.orange,
                  ),
                ),
                SizedBox(height: 50),
                // const Spacer(),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 62,
                          width: 327,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                           color:  Color(0xFFFF7622)

                          ),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
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
                              height: 62,
                              width: 327,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color:  Color(0xFFFF7622)
                              ),
                              child: const Center(
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          GestureDetector(
                            onTap: () {
                              _controller.jumpToPage(3);
                            },
                            child: const Center(child: Text("Skip")),
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
