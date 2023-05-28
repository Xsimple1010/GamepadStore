import 'package:flutter/material.dart';
import 'package:gamepads/components/footer_button.dart';
import 'package:gamepads/components/footer_container.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class DetailPageFooter extends StatelessWidget {
  const DetailPageFooter({
    super.key,
    required this.price,
  });

  final int price;

  @override
  Widget build(BuildContext context) {
    return FooterContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text(
                '\$',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 16, 92, 240),
                ),
              ),
              Text(
                price.toString(),
                style: GoogleFonts.archivo(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          FooterButton(
            isSelected: true,
            icon: Ionicons.arrow_forward_outline,
            label: 'Preorder',
            onPressed: () {},
            footerButtonIconPosition: FooterButtonIconPosition.right,
          ),
        ],
      ),
    );
  }
}
