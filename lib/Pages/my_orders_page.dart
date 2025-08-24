import 'package:flutter/material.dart';
import 'package:food_app/Pages/history_page.dart';
import 'package:food_app/Pages/on_going_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Ongoing + History
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SafeArea(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                color: Colors.black,
                                height: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "My Orders",
                          style: GoogleFonts.sen(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
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
                            "assets/images/menu-dots.png",
                            color: Colors.black,
                            height: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TabBar(
                indicatorColor: Color(0xFFFF7622),
                labelColor: Color(0xFFFF7622),
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 1,
                labelStyle: GoogleFonts.sen(fontWeight: FontWeight.w500),
                tabs: [
                  Tab(text: "Ongoing"),
                  Tab(text: "History"),
                ],
              ),
              Expanded(
                child: TabBarView(children: [OnGoingPage(), HistoryPage()]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
