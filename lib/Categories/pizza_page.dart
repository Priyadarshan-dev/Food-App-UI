import 'package:flutter/material.dart';
import 'package:food_app/Components/filter_card_component.dart';
import 'package:food_app/Components/restaurant_card.dart';
import 'package:food_app/Product%20Details/details_page.dart';
import 'package:food_app/Pages/restaruant_view_page.dart';
import 'package:google_fonts/google_fonts.dart';

class PizzaPage extends StatefulWidget {
  const PizzaPage({super.key});

  @override
  State<PizzaPage> createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  List<String> burgerImages = [
    "assets/images/pizza.png",
    "assets/images/pizza1.png",
    "assets/images/pizza4.png",
    "assets/images/pizza.png",
  ];

  List<String> title = [
    "European Pizza",
    "Buffalo Pizza",
    "Italian Pizza",
    "Wood Fire Pizza",
  ];

  List<String> subTitle = [
    "Rose Garden",
    "Cafenio Restaurant",
    "Kaj Firm Kitchen",
    "Kabab Restaurant",
  ];

  List<String> price = ["\$40", "\$60", "\$75", "\$94"];

  FilterCardComponent filterCardComponent = FilterCardComponent();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
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
                          border: Border.all(color: Color(0xFFEDEDED)),
                        ),
                        child: Center(
                          child: Text(
                            "Pizza",
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
                        "Popular Pizza",
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
                        childAspectRatio: 0.85,
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
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFFFFFFF),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: const Offset(1, 3),
                              ),
                            ],
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
                                Center(
                                  child: Image.asset(
                                    burgerImages[index],
                                    height: screenHeight * 0.1,
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Text(
                                  title[index],
                                  style: GoogleFonts.sen(
                                    fontWeight: FontWeight.w700,
                                    fontSize: screenHeight * 0.018,
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.005),
                                Text(
                                  subTitle[index],
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
                                      price[index],
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RestaruantViewPage(),
                      ),
                    );
                  },
                  child: RestaurantCard(
                    name: 'Tasty Treat Gallery',
                    rating: 4.7,
                    delivery: 'Free',
                    time: '20 min',
                    imageAsset: 'assets/images/top3.jpg',
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RestaruantViewPage(),
                      ),
                    );
                  },
                  child: RestaurantCard(
                    name: 'American Spicy Burger Shop',
                    rating: 4.7,
                    delivery: 'Free',
                    time: '20 min',
                    imageAsset: 'assets/images/top4.jpg',
                  ),
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
