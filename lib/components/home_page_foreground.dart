import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForeGround extends StatelessWidget {
  const ForeGround({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * .8,
      height: size.height * .81,
      margin: EdgeInsets.only(left: size.width * .58),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
        ),
        gradient: LinearGradient(
          transform: GradientRotation(2),
          colors: [
            Color.fromARGB(255, 63, 119, 240),
            Color.fromARGB(255, 39, 108, 241)
          ],
        ),
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          'Dual Sense',
          style: GoogleFonts.archivo(
            fontSize: 120,
            fontWeight: FontWeight.bold,
            height: 2.2,
            color: const Color.fromARGB(61, 76, 139, 247),
          ),
        ),
      ),
    );
  }
}
