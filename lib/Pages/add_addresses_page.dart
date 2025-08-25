import 'package:flutter/material.dart';
import 'package:food_app/Components/text_field_component.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final _addressController = TextEditingController();
  final _streetController = TextEditingController();
  final _postCodeController = TextEditingController();
  final _apartmentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.35,
                decoration: BoxDecoration(color: Color(0xFFF6F6F6)),
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
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/Icon1.png",
                                  color: Colors.white,
                                  height: screenHeight * 0.022,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          screenWidth * 0.025,
                        ),
                        child: Image.asset(
                          "assets/images/location.png",
                          width: double.infinity,
                          fit: BoxFit.fill, // fills nicely
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.07),
                child: Row(
                  children: [
                    Text(
                      "ADDRESS",
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
                controller: _addressController,
                hintText: '',
                obscureText: false,
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.08),
                child: Row(
                  children: [
                    Text(
                      "STREET",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.37),
                    Text(
                      "POST CODE",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.035,
                      ),
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
                        controller: _streetController,
                        hintText: '',
                        obscureText: false,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.05),
                    Expanded(
                      child: TextFieldComponent(
                        controller: _postCodeController,
                        hintText: '',
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.07),
                child: Row(
                  children: [
                    Text(
                      "APPARTMENT",
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
                controller: _apartmentController,
                hintText: '',
                obscureText: false,
              ),

              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.09),
                child: Row(
                  children: [
                    Text(
                      "LABEL AS",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.09),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: screenHeight * 0.055,
                      width: screenWidth * 0.24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.1),
                        color: Color(0xFFF6F6F6),
                      ),
                      child: Center(
                        child: Text(
                          "HOME",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.035,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.025),
                    Container(
                      height: screenHeight * 0.055,
                      width: screenWidth * 0.24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.1),
                        color: Color(0xFFF6F6F6),
                      ),
                      child: Center(
                        child: Text(
                          "Work",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.035,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.025),
                    Container(
                      height: screenHeight * 0.055,
                      width: screenWidth * 0.24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.1),
                        color: Color(0xFFF6F6F6),
                      ),
                      child: Center(
                        child: Text(
                          "Other",
                          style: GoogleFonts.sen(
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.035,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenHeight * 0.02),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: screenHeight * 0.07,
                  width: screenWidth * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                    color: Color(0xFFFF7622),
                  ),
                  child: Center(
                    child: Text(
                      "SAVE LOCATION",
                      style: GoogleFonts.sen(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.035,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
