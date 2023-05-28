import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.onPressed,
    this.width,
    this.height,
    this.borderRadius,
  });

  final bool isSelected;
  final IconData icon;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    LinearGradient btSelectedGradient = const LinearGradient(
      transform: GradientRotation(4.5),
      colors: [
        Color.fromARGB(255, 38, 42, 51),
        Color.fromARGB(255, 71, 75, 83),
      ],
    );

    LinearGradient btDefaultGradient = const LinearGradient(
      colors: [
        Color.fromARGB(255, 229, 239, 249),
        Color.fromARGB(255, 232, 240, 249),
      ],
    );

    return Container(
      width: width ?? 70,
      height: width ?? 65,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(20),
        gradient: isSelected ? btSelectedGradient : btDefaultGradient,
        border: Border.all(
          color:
              isSelected ? const Color.fromARGB(255, 61, 64, 72) : Colors.white,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(88, 27, 27, 27),
            blurRadius: 20,
            spreadRadius: 2,
            offset: Offset(5, 10),
          ),
          BoxShadow(
            color: Color.fromARGB(99, 248, 248, 248),
            blurRadius: 20,
            spreadRadius: 2,
            offset: Offset(-5, -10),
          )
        ],
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: isSelected
              ? Colors.white
              : const Color.fromARGB(255, 95, 104, 120),
        ),
      ),
    );
  }
}
