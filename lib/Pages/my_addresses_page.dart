import 'package:flutter/material.dart';
import 'package:food_app/Pages/add_addresses_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAddressPage extends StatelessWidget {
  const MyAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset("assets/images/Icon1.png"),
                  ),
                  Text(
                    "My Address",
                    style: GoogleFonts.sen(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Address Cards
              _buildAddressCard(
                "HOME",
                "2464 Royal Ln. Mesa, New Jersey 45463",
                "assets/images/Home.png",
                "assets/images/edit.png",
                "assets/images/delete.png",
              ),
              const SizedBox(height: 10),
              _buildAddressCard(
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
                  height: 62,
                  width: 327,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFFF7622),
                  ),
                  child: Center(
                    child: Text(
                      "ADD NEW ADDRESS",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildAddressCard(
  String title,
  String address,
  String leadingAsset,
  String editAsset,
  String deleteAsset,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(leadingAsset, height: 30, width: 30),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  address,
                  style: GoogleFonts.sen(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          // Edit image
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              editAsset,
              height: 20,
              width: 20,
              color: Color(0xFFFF7622),
            ),
          ),
          const SizedBox(width: 12),

          // Delete image
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              deleteAsset,
              height: 20,
              width: 20,
              color: Color(0xFFFF7622),
            ),
          ),
        ],
      ),
    ),
  );
}
