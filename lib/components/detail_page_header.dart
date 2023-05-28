import 'package:flutter/material.dart';
import 'package:gamepads/components/header_container.dart';
import 'package:gamepads/components/home_page_header.dart';
import 'package:ionicons/ionicons.dart';

class DetailPageHeader extends StatelessWidget {
  const DetailPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return HeaderContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Ionicons.arrow_back_outline,
              color: Colors.white,
            ),
          ),
          ButtonContainer(
            iconButton: IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.cart_outline,
                color: Color.fromARGB(255, 95, 104, 120),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
