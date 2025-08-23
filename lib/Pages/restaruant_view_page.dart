import 'package:flutter/material.dart';
import 'package:food_app/Components/filter_card_component.dart';
import 'package:food_app/Pages/burger_page.dart';
import 'package:food_app/Pages/details_page.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaruantViewPage extends StatefulWidget {
  const RestaruantViewPage({super.key});

  @override
  State<RestaruantViewPage> createState() => _RestaruantViewPageState();
}

class _RestaruantViewPageState extends State<RestaruantViewPage> {
  FilterCardComponent filterCardComponent = FilterCardComponent();
  List<String> burgerImages = [
    "assets/images/burger.png",
    "assets/images/burger2.png",
    "assets/images/burger2.png",
    "assets/images/burger.png",
  ];
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05,
                        vertical: screenHeight * 0.03,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              "assets/images/Icon1.png",
                              color: Colors.white,
                              width: screenWidth * 0.07,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              "assets/images/More.png",
                              color: Colors.white,
                              width: screenWidth * 0.07,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        "assets/images/healthy.jpg",
                        height: screenHeight * 0.37,
                        width: screenWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.03,
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/Star.png",
                            color: Color(0xFFFF7622),
                            width: screenWidth * 0.05,
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            "4.7",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/Car.png",
                            color: Color(0xFFFF7622),
                            width: screenWidth * 0.05,
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            "Free",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/Watch.png",
                            color: Color(0xFFFF7622),
                            width: screenWidth * 0.05,
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            "20 min",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.02,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Spicy Restarunant",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w700,
                          fontSize: screenWidth * 0.055,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    top: screenHeight * 0.01,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Maecenas sed diam eget risus varius blandit sit\namet non magna. Integer posuere erat a ante\nvenenatis dapibus posuere velit aliquet",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.038,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.02),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.05),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BurgerPage(),
                                ),
                              );
                            },
                            child: Container(
                              height: screenHeight * 0.05,
                              width: screenWidth * 0.22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white70,
                                border: Border(
                                  bottom: BorderSide(color: Colors.black),
                                  top: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Burger",
                                  style: GoogleFonts.sen(
                                    fontWeight: FontWeight.w400,
                                    fontSize: screenWidth * 0.035,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.035),
                          child: Container(
                            height: screenHeight * 0.05,
                            width: screenWidth * 0.24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white70,
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Sandwich",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.035,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.035),
                          child: Container(
                            height: screenHeight * 0.05,
                            width: screenWidth * 0.22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white70,
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Pizza",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.035,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.035),
                          child: Container(
                            height: screenHeight * 0.05,
                            width: screenWidth * 0.24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white70,
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Sandwich",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.035,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.05),
                  child: Row(
                    children: [
                      Text(
                        "Burger(10)",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w700,
                          fontSize: screenWidth * 0.055,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.03,
                    left: screenWidth * 0.05,
                    right: screenWidth * 0.05,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );
                    },
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.7,
                        crossAxisCount: 2,
                        mainAxisSpacing: screenHeight * 0.01,
                        crossAxisSpacing: screenWidth * 0.02,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.04,
                              vertical: screenHeight * 0.01,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  burgerImages[index],
                                  height: screenHeight * 0.1,
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Text(
                                  "Burger Bistro",
                                  style: GoogleFonts.sen(
                                    fontWeight: FontWeight.w700,
                                    fontSize: screenHeight * 0.018,
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.005),
                                Text(
                                  "Rose Garden",
                                  style: GoogleFonts.sen(
                                    fontWeight: FontWeight.w400,
                                    fontSize: screenHeight * 0.015,
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$40",
                                      style: GoogleFonts.sen(
                                        fontSize: screenHeight * 0.018,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Container(
                                      height: screenHeight * 0.04,
                                      width: screenWidth * 0.09,
                                      decoration: ShapeDecoration(
                                        shape: CircleBorder(),
                                        color: Color(0xFFFF7622),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          "assets/images/Plus.png",
                                          color: Colors.white,
                                          height: screenHeight * 0.018,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
