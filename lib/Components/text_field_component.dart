import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldComponent extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? labelText;

  const TextFieldComponent({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    // MediaQuery values
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText != null)
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.01),
              child: Text(
                labelText!,
                style: GoogleFonts.sen(
                  fontSize: screenWidth * 0.035,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          Container(
            height: screenHeight * (62 / 812),
            width: screenWidth,
            child: TextField(
              obscureText: obscureText,
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade500),
                ),
                hintText: hintText,
                hintStyle: GoogleFonts.sen(
                  fontSize: screenWidth * 0.035,
                  color: Colors.grey.shade600,
                ),
                prefixIcon: prefixIcon != null
                    ? Icon(prefixIcon, color: Color(0xFFF0F5FA))
                    : null,
                suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 18,
                ),
                filled: true,
                fillColor: Color(0xFFF0F5FA),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
