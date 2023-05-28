import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GamepadFeatures extends StatelessWidget {
  const GamepadFeatures({
    super.key,
    required this.title,
    required this.label,
    required this.icon,
  });

  final String title;
  final String label;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 234, 242, 249),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(214, 161, 191, 221),
                blurRadius: 20,
                spreadRadius: 2,
                offset: Offset(5, 10),
              ),
              BoxShadow(
                color: Color.fromARGB(52, 248, 248, 248),
                blurRadius: 20,
                spreadRadius: 2,
                offset: Offset(-5, -10),
              )
            ],
          ),
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 234, 242, 249),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 215, 226, 238),
                  blurRadius: 0,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 234, 242, 249),
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(213, 215, 226, 238),
                    blurRadius: 0,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: icon,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 20)),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.archivo(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              label,
              style: GoogleFonts.archivo(
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 83, 91, 99),
              ),
            )
          ],
        )
      ],
    );
  }
}
