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
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 30),
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
                          height: 45,
                          width: 45,
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
                    SizedBox(width: 15),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DELEVIER TO",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color(0xFFFF7622),
                            ),
                          ),
                          Text(
                            "Halal Lab office",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 150),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CartPage()),
                          );
                        },
                        child: Container(
                          height: 45,
                          width: 45,
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
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 5),
                      child: Text(
                        "Hey Halal,",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text(
                      "Good Afternoon!",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchPage()),
                    );
                  },
                  child: TextFieldComponent(
                    controller: _searchController,
                    hintText: 'Search dishes, restaurants',
                    obscureText: false,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchPage()),
                    );
                  },
                  child: Text("Search"),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "All Categories",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          Text(
                            "See All",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, size: 15),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 122,
                          width: 122,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.shade200,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/pizza1.png",
                                    height: 81,
                                    width: 96,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 122,
                          width: 122,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.shade200,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/burger.png",
                                    height: 81,
                                    width: 96,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: 122,
                          width: 122,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.shade200,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/pizza1.png",
                                    height: 81,
                                    width: 96,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Open Restaurants",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Text(
                              "See All",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, size: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 20),
                RestaurantCard(
                  name: 'Rose Garden Restaurant',
                  rating: 4.7,
                  delivery: 'Free',
                  time: '20 min',
                  imageAsset: 'assets/images/fruit2.jpg',
                ),
                SizedBox(height: 20),
                RestaurantCard(
                  name: 'Rose Garden Restaurant',
                  rating: 4.7,
                  delivery: 'Free',
                  time: '20 min',
                  imageAsset: 'assets/images/fruit1.jpg',
                ),
                SizedBox(height: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
