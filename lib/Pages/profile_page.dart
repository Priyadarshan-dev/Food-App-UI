import 'package:flutter/material.dart';
import 'package:food_app/Pages/edit_profile_page.dart';
import 'package:food_app/Pages/my_addresses_page.dart';
import 'package:food_app/Pages/my_orders_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios, size: 15),
                      SizedBox(width: 10),
                      Text(
                        "Profile",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(children: [Icon(Icons.menu)]),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 100,
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: const Color(0xFFFFEBE4),
                    ),
                    child: Center(
                      child: Text(
                        "P",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vishal khadok",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "I Love fast food",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF6F8FA),
                ),
                child: Column(
                  children: [
                    buildMenuItem(
                      'Personal Info',
                      "assets/images/profile.png",
                      "assets/images/Icon1.png",
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
                      'Addresses',
                      "assets/images/address.png",
                      "assets/images/Icon1.png",
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF6F8FA),
                ),
                child: Column(
                  children: [
                    buildMenuItem(
                      'Cart',
                      "assets/images/cart.png",
                      "assets/images/Icon1.png",
                      () {},
                    ),
                    buildMenuItem(
                      'My Orders',
                      "assets/images/myorder.png",
                      "assets/images/Icon1.png",
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
                      'Notifications',
                      "assets/images/notification.png",
                      "assets/images/Icon1.png",
                      () {},
                    ),
                    buildMenuItem(
                      'Payment Method',
                      "assets/images/payment.png",
                      "assets/images/Icon1.png",
                      () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF6F8FA),
                ),
                child: Column(
                  children: [
                    buildMenuItem(
                      'FAQs',
                      "assets/images/faqs.png",
                      "assets/images/Icon1.png",
                      () {},
                    ),
                    buildMenuItem(
                      'User Reviews',
                      "assets/images/review.png",
                      "assets/images/Icon1.png",
                      () {},
                    ),
                    buildMenuItem(
                      'Settings',
                      "assets/images/settings.png",
                      "assets/images/Icon1.png",
                      () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF6F8FA),
                ),
                child: Column(
                  children: [
                    buildMenuItem(
                      'Log Out',
                      "assets/images/Logout.png",
                      "assets/images/Icon1.png",
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
  String title,
  String leadingAsset,
  String trailingAsset,
  VoidCallback onTap,
) {
  return ListTile(
    leading: Image.asset(leadingAsset, height: 22, width: 22),
    title: Text(
      title,
      style: GoogleFonts.sen(fontWeight: FontWeight.w400, fontSize: 14),
    ),
    trailing: Image.asset(trailingAsset, height: 18, width: 18),
    onTap: onTap,
  );
}
