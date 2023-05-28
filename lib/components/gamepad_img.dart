import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class GamepadImg extends StatelessWidget {
  const GamepadImg({
    super.key,
    required this.img,
    required this.height,
  });

  final String img;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SimpleShadow(
      sigma: 30,
      opacity: 0.4,
      child: SizedBox(
        child: Image(
          image: AssetImage(img),
          height: height,
        ),
      ),
    );
  }
}
