import 'package:flutter/material.dart';
import 'package:food_app/Components/filter_card_component.dart';
import 'package:food_app/Components/restaurant_card.dart';
import 'package:food_app/Pages/details_page.dart';
import 'package:google_fonts/google_fonts.dart';

class BurgerPage extends StatefulWidget {
  const BurgerPage({super.key});

  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  List<String> burgerImages = [
    "assets/images/burger.png",
    "assets/images/burger2.png",
    "assets/images/burger2.png",
    "assets/images/burger.png",
  ];
  FilterCardComponent filterCardComponent = FilterCardComponent();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.06,
                    left: screenWidth * 0.05,
                    right: screenWidth * 0.05,
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
                      SizedBox(width: screenWidth * 0.04),
                      Container(
                        height: screenHeight * 0.055,
                        width: screenWidth * 0.22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white70,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                          child: Text(
                            "Burger",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenHeight * 0.018,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: screenHeight * 0.055,
                        width: screenWidth * 0.12,
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/Search.png",
                            color: Colors.white,
                            height: screenHeight * 0.022,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.025),
                      GestureDetector(
                        onTap: () {
                          filterCardComponent.filterYourSearch(context);
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
                              "assets/images/Filter.png",
                              color: Colors.black,
                              height: screenHeight * 0.022,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.06),
                  child: Row(
                    children: [
                      Text(
                        "Popular Burgers",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.024,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
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
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.06),
                  child: Row(
                    children: [
                      Text(
                        "Open Restaurants",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.024,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                RestaurantCard(
                  name: 'Rose Garden Restaurant',
                  rating: 4.7,
                  delivery: 'Free',
                  time: '20 min',
                  imageAsset: 'assets/images/pastries.jpg',
                ),
                SizedBox(height: screenHeight * 0.02),
                RestaurantCard(
                  name: 'Rose Garden Restaurant',
                  rating: 4.7,
                  delivery: 'Free',
                  time: '20 min',
                  imageAsset: 'assets/images/fruit1.jpg',
                ),
                SizedBox(height: screenHeight * 0.03),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
