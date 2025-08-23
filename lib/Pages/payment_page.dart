import 'package:flutter/material.dart';
import 'package:food_app/Pages/add_card_page.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isMasterSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Row(
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
                    "Payment",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 72,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade200,
                      ),
                      child: Center(
                        child: Image.asset("assets/images/Cash.png"),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 72,
                        width: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade200,
                        ),
                        child: Center(
                          child: Image.asset("assets/images/visa.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMasterSelected = true;
                          });
                        },
                        child: Container(
                          height: 72,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade200,
                          ),
                          child: Center(
                            child: Image.asset("assets/images/mastercard.png"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        height: 72,
                        width: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade200,
                        ),
                        child: Center(
                          child: Image.asset("assets/images/paypal.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            isMasterSelected
                ? Container(
                    height: 82,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade200,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "MasterCard Selected",
                                style: GoogleFonts.sen(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Image.asset("assets/images/Mastercard1.png"),
                              SizedBox(width: 4),
                              Text("***************436"),
                              SizedBox(width: 100),
                              Image.asset(
                                "assets/images/Polygon 1.png",
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    height: 257,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade200,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Clipped.png"),
                        SizedBox(height: 10),
                        Text(
                          "No master card added",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "You can add a mastercard and\n        save it for later",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddCardPage()),
                );
              },
              child: Container(
                height: 62,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Plus.png",
                      color: Color(0xFFFF7622),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "ADD NEW",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFFFF7622),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Text(
                    "TOTAL:",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "\$96",
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 62,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFFF7622),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PAY & CONFIRM",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
