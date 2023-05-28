import 'package:flutter/material.dart';
import 'package:gamepads/components/header_container.dart';
import 'package:ionicons/ionicons.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return HeaderContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonContainer(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu_rounded),
            ),
          ),
          ButtonContainer(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.cart_outline),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key, required this.iconButton});

  final IconButton iconButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 234, 242, 249),
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: const Color.fromARGB(255, 215, 226, 236),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(88, 27, 27, 27),
            blurRadius: 20,
            spreadRadius: 2,
            offset: Offset(5, 10),
          ),
          BoxShadow(
            color: Color.fromARGB(88, 248, 248, 248),
            blurRadius: 20,
            spreadRadius: 2,
            offset: Offset(-5, -10),
          )
        ],
      ),
      child: iconButton,
    );
  }
}
