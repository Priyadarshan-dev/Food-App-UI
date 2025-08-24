import 'package:flutter/material.dart';
import 'package:food_app/Pages/add_addresses_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAddressPage extends StatelessWidget {
  const MyAddressPage({super.key});

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
                left: screenWidth * 0.05,
                top: screenHeight * 0.02,
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
                    "My Address",
                    style: GoogleFonts.sen(
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),

            // Address Cards
            _buildAddressCard(
              context,
              "HOME",
              "2464 Royal Ln. Mesa, New Jersey 45463",
              "assets/images/Home.png",
              "assets/images/edit.png",
              "assets/images/delete.png",
            ),
            SizedBox(height: screenHeight * 0.012),
            _buildAddressCard(
              context,
              "WORK",
              "3891 Ranchview Dr. Richardson, California 62639",
              "assets/images/work.png",
              "assets/images/edit.png",
              "assets/images/delete.png",
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddAddressPage()),
                );
              },
              child: Container(
                height: screenHeight * 0.07,
                width: screenWidth * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                  color: Color(0xFFFF7622),
                ),
                child: Center(
                  child: Text(
                    "ADD NEW ADDRESS",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.035,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.06),
          ],
        ),
      ),
    );
  }
}

Widget _buildAddressCard(
  BuildContext context,
  String title,
  String address,
  String leadingAsset,
  String editAsset,
  String deleteAsset,
) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return Container(
    height: screenHeight * 0.12,
    width: screenWidth * 0.9,
    decoration: BoxDecoration(
      color: Color(0xFFF6F6F6),
      borderRadius: BorderRadius.circular(screenWidth * 0.035),
    ),
    child: Row(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.025,
                top: screenHeight * 0.025,
              ),
              child: Container(
                height: screenHeight * 0.06,
                width: screenWidth * 0.12,
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.white,
                ),
                child: Image.asset(
                  leadingAsset,
                  height: screenHeight * 0.025,
                  width: screenWidth * 0.05,
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: screenWidth * 0.035),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.035,
                  ),
                ),
                SizedBox(height: screenHeight * 0.006),
                Text(
                  address,
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.035,
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(
            right: screenWidth * 0.025,
            top: screenHeight * 0.02,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      editAsset,
                      height: screenHeight * 0.025,
                      width: screenWidth * 0.05,
                      color: Color(0xFFFF7622),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.03),

                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      deleteAsset,
                      height: screenHeight * 0.025,
                      width: screenWidth * 0.05,
                      color: Color(0xFFFF7622),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
