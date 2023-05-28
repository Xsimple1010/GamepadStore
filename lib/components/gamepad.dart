import 'package:flutter/material.dart';
import 'package:gamepads/custom/gamepad_path.dart';
import 'package:gamepads/models/gamepad.dart';
import 'package:gamepads/components/gamepad_img.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gamepads/components/platform_logo.dart';

class Gamepad extends StatelessWidget {
  const Gamepad({
    super.key,
    required this.gamepad,
    required this.onTab,
  });

  final double width = 250;
  final double height = 100;
  final GamePadModel gamepad;
  final Function(GamePadModel) onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTab(gamepad),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        height: height,
        width: width,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomPaint(
              size: Size(width, height),
              painter: GamePadPainter(),
              child: _Content(
                gamepad: gamepad,
              ),
            )
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
    return Stack(
      children: [
        Positioned(
          top: 10,
          right: 10,
          child: PlatformLogo(
            platformGamePad: gamepad.platformGamePad,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GamepadImg(
                img: gamepad.img,
                height: 150,
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    gamepad.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.archivo(
                      fontSize: 31.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        gamepad.label.substring(
                          0,
                          gamepad.label.indexOf('_'),
                        ),
                        style: GoogleFonts.archivo(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        gamepad.label.substring(gamepad.label.indexOf('_') + 1,
                            gamepad.label.length),
                        style: GoogleFonts.archivo(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
