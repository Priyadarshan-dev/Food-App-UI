import 'package:flutter/material.dart';
import 'package:food_app/Components/text_field_component.dart';
import 'package:food_app/Pages/order_confirmatio_page.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _expireDateController = TextEditingController();
  final _cvcController = TextEditingController();

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
                top: screenHeight * 0.03,
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
                        child: Padding(
                          padding: EdgeInsets.all(screenWidth * 0.01),
                          child: Image.asset("assets/images/Cross.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  Text(
                    "Add Card",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.07,
                top: screenHeight * 0.020,
              ),
              child: Row(
                children: [
                  Text(
                    "CARD HOLDER NAME",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.035,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.012),
            TextFieldComponent(
              controller: _nameController,
              hintText: 'Vishal Khadok',
              obscureText: false,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.07,
                top: screenHeight * 0.010,
              ),
              child: Row(
                children: [
                  Text(
                    "CARD NUMBER",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.035,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.012),
            TextFieldComponent(
              controller: _numberController,
              hintText: '**************',
              obscureText: false,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.07,
                top: screenHeight * 0.010,
              ),
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EXPIRE DATE",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.035,
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.28),
                      Text(
                        "CVC",
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
            SizedBox(height: screenHeight * 0.012),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.025,
                right: screenWidth * 0.025,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFieldComponent(
                      controller: _expireDateController,
                      hintText: 'mm/yyyy',
                      obscureText: false,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  Expanded(
                    child: TextFieldComponent(
                      controller: _cvcController,
                      hintText: '***',
                      obscureText: false,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderConfirmatioPage(),
                  ),
                );
              },
              child: Container(
                height: screenHeight * 0.075,
                width: screenWidth * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFFF7622),
                ),
                child: Center(
                  child: Text(
                    "ADD & MAKE PAYMENT",
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
