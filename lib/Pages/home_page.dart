import 'package:flutter/material.dart';
import 'package:food_app/Components/restaurant_card.dart';
import 'package:food_app/Components/text_field_component.dart';
import 'package:food_app/Pages/cart_page.dart';
import 'package:food_app/Pages/profile_page.dart';
import 'package:food_app/Pages/restaruant_view_page.dart';
import 'package:food_app/Pages/search_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // MediaQuery values
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.025,
                        left: screenWidth * 0.05,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilePage(),
                            ),
                          );
                        },
                        child: Container(
                          height: screenHeight * 0.055,
                          width: screenHeight * 0.055,
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.grey.shade200,
                          ),
                          child: Center(
                            child: Image.asset("assets/images/Icon.png"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.04),
                    Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.025),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DELEVIER TO",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w700,
                              fontSize: screenWidth * 0.03,
                              color: Color(0xFFFF7622),
                            ),
                          ),
                          Text(
                            "Halal Lab office",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.035,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.025,
                        right: screenWidth * 0.05,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CartPage()),
                          );
                        },
                        child: Container(
                          height: screenHeight * 0.055,
                          width: screenHeight * 0.055,
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/cart.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.025),

                // Greeting
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.08,
                        right: screenWidth * 0.01,
                      ),
                      child: Text(
                        "Hey Halal,",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ),
                    Text(
                      "Good Afternoon!",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w700,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.025),
                TextFieldComponent(
                  controller: _searchController,
                  hintText: 'Search dishes, restaurants',
                  obscureText: false,
                ),
                // Search
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchPage()),
                    );
                  },
                  child: Text("Search"),
                ),

                SizedBox(height: screenHeight * 0.020),

                // Categories Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.08),
                      child: Text(
                        "All Categories",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.05,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.05),
                      child: Row(
                        children: [
                          Text(
                            "See All",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: screenWidth * 0.035,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: screenHeight * 0.025),

                // Category Scroll
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.06),
                    child: Row(
                      children: [
                        _buildCategoryCard(
                          screenHeight,
                          screenWidth,
                          "assets/images/pizza1.png",
                        ),
                        SizedBox(width: screenWidth * 0.05),
                        _buildCategoryCard(
                          screenHeight,
                          screenWidth,
                          "assets/images/burger.png",
                        ),
                        SizedBox(width: screenWidth * 0.05),
                        _buildCategoryCard(
                          screenHeight,
                          screenWidth,
                          "assets/images/pizza1.png",
                        ),
                        SizedBox(width: screenWidth * 0.08),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.04),

                // Open Restaurants
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Open Restaurants",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.05,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "See All",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: screenWidth * 0.035,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.025),

                // Restaurants List
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
                    name: 'Rose Garden Restaurant',
                    rating: 4.7,
                    delivery: 'Free',
                    time: '20 min',
                    imageAsset: 'assets/images/healthy.jpg',
                  ),
                ),
                SizedBox(height: screenHeight * 0.025),
                RestaurantCard(
                  name: 'Rose Garden Restaurant',
                  rating: 4.7,
                  delivery: 'Free',
                  time: '20 min',
                  imageAsset: "assets/images/nonveg.jpg",
                ),
                SizedBox(height: screenHeight * 0.025),
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

  Widget _buildCategoryCard(
    double screenHeight,
    double screenWidth,
    String img,
  ) {
    return Container(
      height: screenHeight * 0.16,
      width: screenWidth * 0.32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.shade200,
      ),
      child: Center(
        child: Image.asset(
          img,
          height: screenHeight * 0.12,
          width: screenWidth * 0.25,
        ),
      ),
    );
  }
}
