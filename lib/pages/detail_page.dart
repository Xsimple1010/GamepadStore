import 'package:flutter/material.dart';
import 'package:gamepads/components/detail_page_header.dart';
import 'package:gamepads/components/features_list.dart';
import 'package:gamepads/components/gamepad_profile.dart';
import 'package:gamepads/models/gamepad.dart';
import 'package:gamepads/components/detail_page_footer.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.gamepad,
  });

  final GamePadModel gamepad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            _Content(
              gamepad: gamepad,
            ),
            Positioned(
              bottom: 30,
              right: 30,
              left: 30,
              child: DetailPageFooter(price: gamepad.price),
            ),
            const DetailPageHeader(),
          ],
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({required this.gamepad});

  final GamePadModel gamepad;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GamepadProfile(
          gamepad: gamepad,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                gamepad.name,
                style: GoogleFonts.archivo(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                gamepad.description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.archivo(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 83, 91, 99),
                ),
              ),
            ],
          ),
        ),
        const FeaturesList()
      ],
    );
  }
}
