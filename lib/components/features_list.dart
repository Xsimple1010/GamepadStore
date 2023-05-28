import 'package:flutter/material.dart';
import 'package:gamepads/components/gamepad_features.dart';
import 'package:ionicons/ionicons.dart';

class FeaturesList extends StatelessWidget {
  const FeaturesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: GridView(
        padding: const EdgeInsets.only(
          top: 25,
          left: 30,
          right: 30,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          mainAxisExtent: 80,
          crossAxisSpacing: 10,
        ),
        children: const [
          GamepadFeatures(
            title: 'Futuristic',
            label: 'Design',
            icon: Icon(
              Ionicons.game_controller_sharp,
              color: Color.fromARGB(255, 48, 178, 226),
            ),
          ),
          GamepadFeatures(
            title: 'Build-in',
            label: 'Microphone',
            icon: Icon(
              Ionicons.mic_sharp,
              color: Color.fromARGB(255, 78, 129, 235),
            ),
          ),
          GamepadFeatures(
            title: 'Haptic',
            label: 'Feedback',
            icon: Icon(
              Icons.padding,
              color: Color.fromARGB(255, 191, 89, 237),
            ),
          ),
          GamepadFeatures(
            title: 'Fast charge',
            label: 'USB-C port',
            icon: Icon(
              Ionicons.game_controller_sharp,
              color: Color.fromARGB(255, 135, 89, 237),
            ),
          )
        ],
      ),
    );
  }
}
