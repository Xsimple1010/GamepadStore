import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterLabel extends StatelessWidget {
  const FooterLabel({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        label,
        style: GoogleFonts.archivo(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
