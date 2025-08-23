import 'package:flutter/material.dart';
import 'package:food_app/Components/text_field_component.dart';
import 'package:food_app/Pages/payment_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final _addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121223),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
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
                              height: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Cart",
                        style: GoogleFonts.sen(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 30),
                      child: Text(
                        "Done",
                        style: GoogleFonts.sen(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF059C6A),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 120,
              width: 360,

              child: Row(
                children: [
                  Container(
                    height: 117,
                    width: 136,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/images/pizza1.png"),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 10),
                          child: Text(
                            "Pizza Calzone",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "European",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "\$64",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            '14',
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 40),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.red,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Image.asset(
                              "assets/images/Cross.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 60),
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: ShapeDecoration(
                              shape: CircleBorder(),
                              color: Colors.grey.shade200,
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/Minus.png",
                                height: 15,
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Text("2", style: TextStyle(color: Colors.white)),
                          SizedBox(width: 12),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                color: Colors.grey.shade200,
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/Plus.png",
                                  height: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 120,
              width: 360,
              child: Row(
                children: [
                  Container(
                    height: 117,
                    width: 137,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/images/pizza.png"),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 10),
                          child: Text(
                            "Pizza Calzone",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "European",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            "\$64",
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            '14',
                            style: GoogleFonts.sen(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 40),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.red,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Image.asset(
                              "assets/images/Cross.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 60),
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: ShapeDecoration(
                              shape: CircleBorder(),
                              color: Colors.grey.shade200,
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/images/Minus.png",
                                height: 15,
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Text("2", style: TextStyle(color: Colors.white)),
                          SizedBox(width: 12),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                color: Colors.grey.shade200,
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/Plus.png",
                                  height: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 190),
            Container(
              height: MediaQuery.of(context).size.height * 0.36,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                      top: 20,
                      right: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "DELEVERY ADDRESS",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "EDIT",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFFFF7622),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFieldComponent(
                    controller: _addressController,
                    hintText: '',
                    obscureText: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                      top: 40,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "TOTAL:",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "\$96",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Breakdown",
                              style: GoogleFonts.sen(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFFFF7622),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaymentPage()),
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
                          "PLACE ORDER",
                          style: GoogleFonts.sen(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
