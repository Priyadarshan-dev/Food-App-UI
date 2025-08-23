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

// Container(height: MediaQuery.of(context).size.height * 0.15,child: ,),
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
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 20),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: ShapeDecoration(
                                    shape: CircleBorder(),
                                    color: Colors.grey.shade200,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/Icon1.png",
                                      height: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 46,
                            width: 89,
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
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 120),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: ShapeDecoration(
                              shape: CircleBorder(),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/Search.png",
                                color: Colors.white,
                              ),
                            ),
                          ),

                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              filterCardComponent.filterYourSearch(context);
                            },
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                color: Colors.grey.shade200,
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/Filter.png",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Text(
                        "Popular Burgers",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );
                    },
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 163 / 180,
                        crossAxisCount: 2,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white70,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(burgerImages[index]),
                                  Text(
                                    "Burger Bistro",
                                    style: GoogleFonts.sen(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "Rose Garden",
                                    style: GoogleFonts.sen(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$40",
                                        style: GoogleFonts.sen(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          color: Color(0xFFFF7622),
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            "assets/images/Plus.png",
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Text(
                        "Open Restaurants",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                RestaurantCard(
                  name: 'Rose Garden Restaurant',
                  rating: 4.7,
                  delivery: 'Free',
                  time: '20 min',
                  imageAsset: 'assets/images/pastries.jpg',
                ),
                SizedBox(height: 20),
                RestaurantCard(
                  name: 'Rose Garden Restaurant',
                  rating: 4.7,
                  delivery: 'Free',
                  time: '20 min',
                  imageAsset: 'assets/images/fruit1.jpg',
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
