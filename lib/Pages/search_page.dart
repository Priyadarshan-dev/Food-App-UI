import 'package:flutter/material.dart';
import 'package:food_app/Categories/milkshakes_page.dart';
import 'package:food_app/Categories/pizza_page.dart';
import 'package:food_app/Components/text_field_component.dart';
import 'package:food_app/Categories/burger_page.dart';
import 'package:food_app/Pages/cart_page.dart';
import 'package:food_app/Product%20Details/details_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchController = TextEditingController();

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
                    top: screenHeight * 0.04,
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
                              color: Colors.black,
                              height: screenHeight * 0.022,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      Text(
                        "Search",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.02,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CartPage()),
                          );
                        },
                        child: Container(
                          height: screenHeight * 0.055,
                          width: screenWidth * 0.12,
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/cart.png",
                              color: Colors.white,
                              height: screenHeight * 0.025,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                TextFieldComponent(
                  controller: _searchController,
                  hintText: 'Search',
                  obscureText: false,
                  prefixImage: "assets/images/Search.png",
                ),
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.06),
                  child: Row(
                    children: [
                      Text(
                        "Recent Keywords",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.024,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.06),
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
                            height: screenHeight * 0.055,
                            width: screenWidth * 0.22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white70,
                              border: Border.all(color: Color(0xFFEDEDED)),
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.035),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MilkshakesPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: screenHeight * 0.055,
                            width: screenWidth * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white70,
                              border: Border.all(color: Color(0xFFEDEDED)),
                            ),
                            child: Center(
                              child: Text(
                                "Milkshakes",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenHeight * 0.018,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.035),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PizzaPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: screenHeight * 0.055,
                            width: screenWidth * 0.18,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.035),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MilkshakesPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: screenHeight * 0.055,
                            width: screenWidth * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white70,
                              border: Border.all(color: Color(0xFFEDEDED)),
                            ),
                            child: Center(
                              child: Text(
                                "Milkshakes",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenHeight * 0.018,
                                ),
                              ),
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
                        "Suggested Restaurants",
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
                  padding: EdgeInsets.only(left: screenWidth * 0.06),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/healthy.jpg",
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.14,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pansi Restaurant",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenHeight * 0.018,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.005),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Star.png",
                                color: Color(0xFFFF7622),
                                height: screenHeight * 0.02,
                              ),
                              SizedBox(width: screenWidth * 0.01),
                              Text(
                                "4.7",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenHeight * 0.018,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                    vertical: screenHeight * 0.012,
                  ),
                  child: Divider(thickness: 1),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.06),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/healthy.jpg",
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.14,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "American Spicy Burger Shop",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenHeight * 0.018,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.005),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Star.png",
                                color: Color(0xFFFF7622),
                                height: screenHeight * 0.02,
                              ),
                              SizedBox(width: screenWidth * 0.01),
                              Text(
                                "4.3",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenHeight * 0.018,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                    vertical: screenHeight * 0.012,
                  ),
                  child: Divider(thickness: 1),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.06),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/healthy.jpg",
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.14,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cafenio Coffee Club",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenHeight * 0.018,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.005),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/Star.png",
                                color: Color(0xFFFF7622),
                                height: screenHeight * 0.02,
                              ),
                              SizedBox(width: screenWidth * 0.01),
                              Text(
                                "4.0",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenHeight * 0.018,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                    vertical: screenHeight * 0.012,
                  ),
                  child: Divider(thickness: 1),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.06),
                  child: Row(
                    children: [
                      Text(
                        "Popular Fast Food",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.024,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.18,
                        width: screenWidth * 0.4,
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
                        child: Column(
                          children: [
                            SizedBox(height: screenHeight * 0.015),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/pizza1.png",
                                  height: screenHeight * 0.1,
                                  width: screenWidth * 0.25,
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth * 0.04,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "European Pizza",
                                    style: GoogleFonts.sen(
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenWidth * 0.038,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Uttora Coffe House",
                              style: GoogleFonts.sen(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.05),
                    Container(
                      height: screenHeight * 0.18,
                      width: screenWidth * 0.4,
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
                      child: Column(
                        children: [
                          SizedBox(height: screenHeight * 0.015),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/pizza4.png",
                                height: screenHeight * 0.1,
                                width: screenWidth * 0.25,
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth * 0.04),
                            child: Row(
                              children: [
                                Text(
                                  "Buffalo Pizza",
                                  style: GoogleFonts.sen(
                                    fontWeight: FontWeight.w700,
                                    fontSize: screenWidth * 0.038,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text("Cafenio Coffe Club", style: GoogleFonts.sen()),
                        ],
                      ),
                    ),
                  ],
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
