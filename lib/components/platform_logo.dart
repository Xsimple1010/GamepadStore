import 'package:flutter/material.dart';
import 'package:gamepads/models/gamepad.dart';
import 'package:ionicons/ionicons.dart';

class PlatformLogo extends StatelessWidget {
  const PlatformLogo({super.key, required this.platformGamePad});

  final PlatformGamePad platformGamePad;

  @override
  Widget build(BuildContext context) {
    Color baseColor = const Color.fromARGB(255, 227, 235, 244);
    double size = 40;
    return platformGamePad == PlatformGamePad.playstation
        ? Icon(
            Ionicons.logo_playstation,
            color: baseColor,
            size: size,
          )
        : platformGamePad == PlatformGamePad.xbox
            ? Icon(
                Ionicons.logo_xbox,
                color: baseColor,
                size: size,
              )
            : Padding(
                padding: const EdgeInsets.only(top: 5, right: 5),
                child: Image(
                  color: baseColor,
                  image: const AssetImage(
                    'images/nintendo_switch_logo.png',
                  ),
                  height: 35,
                ),
              );
  }
}
