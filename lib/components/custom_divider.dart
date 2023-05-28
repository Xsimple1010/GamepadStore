import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 2,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(141, 31, 73, 156),
            blurRadius: 0,
            spreadRadius: 0,
            blurStyle: BlurStyle.inner,
          ),
          BoxShadow(
            color: Color.fromARGB(90, 115, 181, 247),
            blurRadius: 0,
            spreadRadius: 0,
            offset: Offset(0.8, 0),
            blurStyle: BlurStyle.inner,
          )
        ],
      ),
    );
  }
}
