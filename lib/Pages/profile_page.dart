import 'package:flutter/material.dart';
import 'package:food_app/Pages/edit_profile_page.dart';
import 'package:food_app/Pages/my_addresses_page.dart';
import 'package:food_app/Pages/my_orders_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.06,
                right: screenWidth * 0.06,
                top: screenHeight * 0.02,
              ),
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
                          height: screenHeight * 0.055,
                          width: screenWidth * 0.12,
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: Color(0xFFF6F6F6),
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
                      SizedBox(width: screenWidth * 0.025),
                      Text(
                        "Profile",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w700,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ],
                  ),
                  Row(
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
                            color: Color(0xFFF6F6F6),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/menu-dots.png",
                              color: Colors.black,
                              height: screenHeight * 0.022,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.08),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(screenWidth * 0.025),
                    child: Image.asset(
                      "assets/images/boy.png",
                      height: screenHeight * 0.11,
                      width: screenWidth * 0.24,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vishal khadok",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w700,
                          fontSize: screenWidth * 0.045,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
                      Text(
                        "I Love fast food",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.035,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.075,
                right: screenWidth * 0.075,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  color: Color(0xFFF6F6F6),
                ),
                child: Column(
                  children: [
                    buildMenuItem(
                      context,
                      'Personal Info',
                      "assets/images/profile.png",
                      "assets/images/right.png",
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfilePage(),
                          ),
                        );
                      },
                    ),
                    buildMenuItem(
                      context,
                      'Addresses',
                      "assets/images/address.png",
                      "assets/images/right.png",
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyAddressPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.075,
                right: screenWidth * 0.075,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  color: Color(0xFFF6F6F6),
                ),
                child: Column(
                  children: [
                    buildMenuItem(
                      context,
                      'Cart',
                      "assets/images/cart.png",
                      "assets/images/right.png",
                      () {},
                    ),
                    buildMenuItem(
                      context,
                      'My Orders',
                      "assets/images/myorder.png",
                      "assets/images/right.png",
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyOrdersPage(),
                          ),
                        );
                      },
                    ),
                    buildMenuItem(
                      context,
                      'Notifications',
                      "assets/images/notification.png",
                      "assets/images/right.png",
                      () {},
                    ),
                    buildMenuItem(
                      context,
                      'Payment Method',
                      "assets/images/payment.png",
                      "assets/images/right.png",
                      () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.075,
                right: screenWidth * 0.075,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  color: Color(0xFFF6F6F6),
                ),
                child: Column(
                  children: [
                    buildMenuItem(
                      context,
                      'FAQs',
                      "assets/images/faqs.png",
                      "assets/images/right.png",
                      () {},
                    ),
                    buildMenuItem(
                      context,
                      'User Reviews',
                      "assets/images/review.png",
                      "assets/images/right.png",
                      () {},
                    ),
                    buildMenuItem(
                      context,
                      'Settings',
                      "assets/images/settings.png",
                      "assets/images/right.png",
                      () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.075,
                right: screenWidth * 0.075,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  color: Color(0xFFF6F6F6),
                ),
                child: Column(
                  children: [
                    buildMenuItem(
                      context,
                      'Log Out',
                      "assets/images/Logout.png",
                      "assets/images/right.png",
                      () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem(
  BuildContext context,
  String title,
  String leadingAsset,
  String trailingAsset,
  VoidCallback onTap,
) {
  final screenWidth = MediaQuery.of(context).size.width;

  return ListTile(
    leading: Image.asset(
      leadingAsset,
      height: screenWidth * 0.055,
      width: screenWidth * 0.055,
    ),
    title: Text(
      title,
      style: GoogleFonts.sen(
        fontWeight: FontWeight.w400,
        fontSize: screenWidth * 0.035,
      ),
    ),
    trailing: Image.asset(
      trailingAsset,
      height: screenWidth * 0.045,
      width: screenWidth * 0.045,
    ),
    onTap: onTap,
  );
}
