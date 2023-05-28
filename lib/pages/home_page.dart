import 'package:flutter/material.dart';
import 'package:gamepads/components/gamepad_list.dart';
import 'package:gamepads/components/home_page_footer.dart';
import 'package:gamepads/components/home_page_foreground.dart';
import 'package:gamepads/components/home_page_header.dart';
import 'package:gamepads/models/gamepad.dart';
import 'package:gamepads/pages/detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: const Stack(
          children: [
            ForeGround(),
            _Content(),
            HomePageHeader(),
            Positioned(
              bottom: 30,
              left: 30,
              right: 30,
              child: HomePageFooter(),
            )
          ],
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    void onTab(GamePadModel gamepad) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailPage(gamepad: gamepad),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Featured',
                  style: GoogleFonts.archivo(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Products',
                  style: GoogleFonts.archivo(
                    fontSize: 37,
                    height: 0.7,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1.3
                      ..color = const Color.fromARGB(255, 71, 75, 83),
                  ),
                ),
              ],
            ),
          ),
          GamepadList(onTab: onTab)
        ],
      ),
    );
  }
}
