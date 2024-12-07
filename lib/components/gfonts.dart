import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gfonts extends StatelessWidget {
  const Gfonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "5. Google Fonts",
      style: GoogleFonts.montserrat(
          fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blue),
    );
  }
}
